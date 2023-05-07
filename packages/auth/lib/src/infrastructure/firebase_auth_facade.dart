import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:auth/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:common/common.dart';
import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class FirebaseAuthFacade
    implements
        UserAuthFacade,
        PartnerAuthFacade,
        SelectorAuthFacade,
        CommonAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _googleSignIn;
  final Logger _logger;
  final AuthCloudFunctionsFacade _authCloudFunctionsFacade;
  final FirebaseCrashlytics _crashlytics;

  FirebaseAuthFacade({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firestore,
    required GoogleSignIn googleSignIn,
    required Logger logger,
    required AuthCloudFunctionsFacade authCloudFunctionsFacade,
    required FirebaseCrashlytics crashlytics,
  })  : _firebaseAuth = firebaseAuth,
        _firestore = firestore,
        _googleSignIn = googleSignIn,
        _logger = logger,
        _authCloudFunctionsFacade = authCloudFunctionsFacade,
        _crashlytics = crashlytics;

  @override
  Stream<Either<AuthFailure, Tuple2<String, int?>>>
      sendSmsVerificationCodeForUser({
    required String phoneNumber,
    required int? resendToken,
  }) async* {
    final streamController =
        StreamController<Either<AuthFailure, Tuple2<String, int?>>>();
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: kSmsCodeTimeoutDurationInSeconds),
      forceResendingToken: resendToken,
      codeSent: (verificationId, resendToken) async {
        final result = Tuple2(verificationId, resendToken);
        streamController.add(right(result));
      },
      verificationFailed: (e) async {
        _logger.e(e);
        final failure = await _handleFirebaseException(e);
        streamController.add(left(failure));
      },
      verificationCompleted: (_) {
        // Android only
      },
      codeAutoRetrievalTimeout: (_) {
        streamController.add(left(const AuthFailure.smsTimeout()));
      },
    );

    yield* streamController.stream;
  }

  @override
  Future<Either<AuthFailure, AppUser>> signInWithPhoneNumberAsUser({
    required String verificationId,
    required String smsCode,
  }) async {
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );
      final result = await _firebaseAuth.signInWithCredential(credential);
      await _addUserToFirestoreIfNotExists(result);
      final appUser = await _mapFirebaseUserToDomain();
      return right(appUser);
    } on FirebaseAuthException catch (e) {
      return left(await _handleFirebaseException(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> linkPhoneNumberForUser({
    required String verificationId,
    required String smsCode,
  }) async {
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );
      await _firebaseAuth.tryGetFirebaseUser().linkWithCredential(credential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(await _handleFirebaseException(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForPartner({
    required String email,
    String? accessCode,
  }) async {
    try {
      await _authCloudFunctionsFacade.checkIfPartnerCanSignIn(
        email: email,
        accessCode: accessCode,
      );
      await _sendSignInLinkForPartner(email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception sending sign in email link for partner EXCEPTION: $e",
      );

      return left(await _handleFirebaseException(e));
    } on DioError catch (e) {
      _logger.e(
        "Dio error sending sign in email link for partner EXCEPTION: $e",
      );

      return left(await _handleDioError(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailLinkAsPartner({
    required String email,
    required Uri link,
    String? accessCode,
  }) async {
    try {
      if (!_firebaseAuth.isSignInWithEmailLink(link.toString())) {
        return left(const AuthFailure.invalidLink());
      }

      final result = await _signInWithEmailLink(email, link.toString());

      await _addPartnerToFirestoreIfNotExists(
        partnerCredential: result,
        accessCode: accessCode,
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception signing in with email link as partner EXCEPTION: $e",
      );

      return left(await _handleFirebaseException(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForSelector({
    required String email,
    String? accessCode,
  }) async {
    try {
      await _authCloudFunctionsFacade.checkIfSelectorCanSignIn(
        email: email,
        accessCode: accessCode,
      );
      await _sendSignInLinkForSelector(email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception sending sign in email link for selector EXCEPTION: $e",
      );

      return left(await _handleFirebaseException(e));
    } on DioError catch (e) {
      _logger.e(
        "Dio error sending sign in email link for selector EXCEPTION: $e",
      );

      return left(await _handleDioError(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailLinkAsSelector({
    required String email,
    required Uri link,
    String? accessCode,
  }) async {
    try {
      if (!_firebaseAuth.isSignInWithEmailLink(link.toString())) {
        return left(const AuthFailure.invalidLink());
      }

      final result = await _signInWithEmailLink(email, link.toString());

      await _addSelectorToFirestoreIfNotExists(
        selectorCredential: result,
        accessCode: accessCode,
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception signing in with email link as selector EXCEPTION: $e",
      );

      return left(await _handleFirebaseException(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForUser(
    String email,
  ) async {
    try {
      await _authCloudFunctionsFacade.checkIfUserCanSignIn(email);
      await _sendSignInLinkForUser(email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception sending sign in email link for user EXCEPTION: $e",
      );

      return left(await _handleFirebaseException(e));
    } on DioError catch (e) {
      _logger.e(
        "Dio Error sending sign in email link for user EXCEPTION: $e",
      );

      return left(await _handleDioError(e));
    }
  }

  @override
  Future<Either<AuthFailure, AppUser>> signInWithEmailLinkAsUser({
    required String email,
    required Uri link,
  }) async {
    try {
      if (!_firebaseAuth.isSignInWithEmailLink(link.toString())) {
        return left(const AuthFailure.invalidLink());
      }

      final result = await _signInWithEmailLink(email, link.toString());
      await _addUserToFirestoreIfNotExists(result);
      final appUser = await _mapFirebaseUserToDomain();
      return right(appUser);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception signing in with email link as user EXCEPTION: $e",
      );

      return left(await _handleFirebaseException(e));
    } on DioError catch (e) {
      _logger.e(
        "Dio error signing in with email link as user EXCEPTION: $e",
      );

      return left(await _handleDioError(e));
    }
  }

  @override
  Future<Either<AuthFailure, AppUser>> signInWithGoogleAsUser() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.canceledByUser());
      }

      final googleAuth = await googleUser.authentication;

      final result = await _signInWithGoogleCredential(googleAuth);

      final email = result.user!.email!;

      final isNewUser = result.additionalUserInfo!.isNewUser;

      if (!isNewUser) {
        await _authCloudFunctionsFacade.checkIfUserCanSignIn(email);
      }

      await _addUserToFirestoreIfNotExists(result);

      final appUser = await _mapFirebaseUserToDomain();

      return right(appUser);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Exception  signing in with Google as user EXCEPTION: $e",
      );

      return left(await _handleFirebaseException(e));
    } on DioError catch (e) {
      await signOut();
      _logger.e(
        "Dio Error signing in with Google as user EXCEPTION: $e",
      );

      return left(await _handleDioError(e));
    } on PlatformException catch (e) {
      _logger.e(
        "Platform Exception signing in with Google as user EXCEPTION: $e",
      );
      return left(const AuthFailure.unavailable());
    }
  }

  @override
  Future<Either<AuthFailure, AppUser>> signInWithAppleAsUser() async {
    try {
      final rawNonce = _generateNonce();
      final nonce = _getShaFromString(rawNonce);

      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: nonce,
        webAuthenticationOptions: WebAuthenticationOptions(
          clientId: dotenv.get(appleSignInClientIdKey),
          redirectUri: Uri.parse(dotenv.get(appleSignInCallbackUrl)),
        ),
      );

      final oauthCredential = OAuthProvider('apple.com').credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );

      final result = await _firebaseAuth.signInWithCredential(oauthCredential);

      final email = result.user!.email!;

      final isNewUser = result.additionalUserInfo!.isNewUser;

      if (!isNewUser) {
        await _authCloudFunctionsFacade.checkIfUserCanSignIn(email);
      }

      await _addUserToFirestoreIfNotExists(result);

      final appUser = await _mapFirebaseUserToDomain();

      return right(appUser);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        'Firebase Auth Exception signing in with Apple as user EXCEPTION: $e',
      );

      return left(await _handleFirebaseException(e));
    } on PlatformException catch (e) {
      _logger.e(
        'Platform Exception signing in with Apple as user EXCEPTION: $e',
      );

      return left(const AuthFailure.unavailable());
    } on DioError catch (e) {
      await signOut();
      _logger.e(
        'Dio Error signing in with Apple as user EXCEPTION: $e',
      );

      return left(await _handleDioError(e));
    } on SignInWithAppleAuthorizationException catch (e) {
      _logger.e(
        'Apple Authorization Exception signing in with Apple as user EXCEPTION: $e',
      );

      if (e.code == AuthorizationErrorCode.canceled) {
        return left(const AuthFailure.canceledByUser());
      }

      return left(const AuthFailure.unavailable());
    }
  }

  @override
  Future<Option<AppUser>> getSignedUser() async {
    try {
      final firebaseUser = _firebaseAuth.currentUser;

      if (firebaseUser == null) return none();

      final userEmail = _getUserEmail(firebaseUser);

      await _authCloudFunctionsFacade.checkIfUserCanSignIn(userEmail);

      final result = await _mapFirebaseUserToDomain();

      return some(result);
    } on DioError catch (e) {
      await signOut();
      _logger.e("Dio Error during getting signed user EXCEPTION: $e");

      await _handleDioError(e);

      return none();
    }
  }

  @override
  Future<Option<AppUser>> getSignedPartner() async {
    try {
      final firebaseUser = _firebaseAuth.currentUser;

      if (firebaseUser == null) return none();

      await _authCloudFunctionsFacade.checkIfPartnerCanSignIn(
        email: firebaseUser.email!,
      );

      return some(firebaseUser.toDomain());
    } on DioError catch (e) {
      await signOut();
      _logger.e(
        "Dio Error getting signed partner EXCEPTION: $e",
      );

      await _handleDioError(e);

      return none();
    }
  }

  @override
  Future<Option<AppUser>> getSignedSelector() async {
    try {
      final firebaseUser = _firebaseAuth.currentUser;

      if (firebaseUser == null) return none();

      await _authCloudFunctionsFacade.checkIfSelectorCanSignIn(
        email: firebaseUser.email!,
      );

      return some(firebaseUser.toDomain());
    } on DioError catch (e) {
      await signOut();
      _logger.e(
        "Dio Error during getting signed selector EXCEPTION: $e",
      );

      await _handleDioError(e);

      return none();
    }
  }

  @override
  Stream<Option<AppUser>> listenToAuthStateChange() async* {
    yield* _firebaseAuth.authStateChanges().asyncExpand((user) async* {
      if (user == null) {
        yield none();
        return;
      }
      try {
        final result = await _mapFirebaseUserToDomain();
        yield some(result);
      } on NotAuthenticatedError {
        yield none();
      } on FirebaseAuthException {
        yield none();
      } on FirebaseException {
        yield none();
      }
    });
  }

  @override
  Stream<Option<AppUser>> listenToUserChanges() async* {
    yield* _firebaseAuth.userChanges().asyncExpand((user) async* {
      if (user == null) {
        yield none();
        return;
      }
      try {
        final result = await _mapFirebaseUserToDomain();
        yield some(result);
      } on NotAuthenticatedError {
        yield none();
      } on FirebaseAuthException {
        yield none();
      } on FirebaseException {
        yield none();
      }
    });
  }

  @override
  Future<void> signOut() {
    return Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }

  @override
  Future<Either<AuthFailure, Unit>> deleteAccount() async {
    try {
      final firebaseUser = _firebaseAuth.tryGetFirebaseUser();
      await _authCloudFunctionsFacade.deleteAccount(firebaseUser.uid);
      await signOut();
      return right(unit);
    } on DioError catch (e) {
      _logger.e('Dio Error deleting account EXCEPTION: $e');
      return left(await _handleDioError(e));
    }
  }

  Future<void> _addUserToFirestoreIfNotExists(
    UserCredential userCredential,
  ) async {
    final isNewUser = userCredential.additionalUserInfo!.isNewUser;

    if (isNewUser) {
      final user = userCredential.user!;
      await _authCloudFunctionsFacade.addUser(
        userId: user.uid,
        email: user.email,
        phoneNumber: user.phoneNumber,
      );
      await _refreshToken();
    }
  }

  Future<void> _addPartnerToFirestoreIfNotExists({
    required UserCredential partnerCredential,
    String? accessCode,
  }) async {
    final isNewPartner = partnerCredential.additionalUserInfo!.isNewUser;

    if (isNewPartner) {
      final partner = partnerCredential.user!;
      await _authCloudFunctionsFacade.addPartner(
        partnerId: partner.uid,
        email: partner.email!,
        accessCode: accessCode!,
      );
      await _refreshToken();
    }
  }

  Future<void> _addSelectorToFirestoreIfNotExists({
    required UserCredential selectorCredential,
    String? accessCode,
  }) async {
    final isNewSelector = selectorCredential.additionalUserInfo!.isNewUser;

    if (isNewSelector) {
      final selector = selectorCredential.user!;
      await _authCloudFunctionsFacade.addSelector(
        selectorId: selector.uid,
        email: selector.email!,
        accessCode: accessCode!,
      );
      await _refreshToken();
    }
  }

  Future<UserCredential> _signInWithGoogleCredential(
      GoogleSignInAuthentication googleAuth) async {
    final authCredential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );
    return _firebaseAuth.signInWithCredential(authCredential);
  }

  String _getUserEmail(User user) {
    return user.email ?? user.providerData.first.email!;
  }

  Future<UserCredential> _signInWithEmailLink(
    String email,
    String link,
  ) async {
    return _firebaseAuth.signInWithEmailLink(
      email: email,
      emailLink: link.toString(),
    );
  }

  Future<void> _sendSignInLinkForUser(String email) async {
    await _firebaseAuth.sendSignInLinkToEmail(
      email: email,
      actionCodeSettings: ActionCodeSettings(
        url: dotenv.get(dynamicLinkUrl),
        handleCodeInApp: true,
        iOSBundleId: 'com.raverteam.tonight',
        androidPackageName: 'com.raverteam.tonight',
        dynamicLinkDomain: dotenv.get(dynamicLinkDomain),
      ),
    );
  }

  Future<void> _sendSignInLinkForSelector(String email) async {
    await _firebaseAuth.sendSignInLinkToEmail(
      email: email,
      actionCodeSettings: ActionCodeSettings(
        url: dotenv.get(dynamicLinkUrl),
        handleCodeInApp: true,
        iOSBundleId: 'com.raverteam.tonightScanner',
        androidPackageName: 'com.raverteam.tonightScanner',
        dynamicLinkDomain: dotenv.get(dynamicLinkDomain),
      ),
    );
  }

  Future<void> _sendSignInLinkForPartner(String email) async {
    await _firebaseAuth.sendSignInLinkToEmail(
      email: email,
      actionCodeSettings: ActionCodeSettings(
        url: dotenv.get(dynamicLinkUrl),
        handleCodeInApp: true,
        iOSBundleId: 'com.raverteam.tonightPartners',
        androidPackageName: 'com.raverteam.tonightPartners',
        dynamicLinkDomain: dotenv.get(dynamicLinkDomain),
      ),
    );
  }

  Future<AuthFailure> _handleDioError(DioError error) async {
    if (error.type == DioErrorType.other &&
        error.message.contains('SocketException')) {
      return const AuthFailure.unavailable();
    }

    final failure = firebaseAuthMessages[error.response?.data['message']];

    if (failure != null) {
      return failure;
    }

    await _crashlytics.recordError(error, StackTrace.current);

    return const AuthFailure.unexpected();
  }

  Future<AuthFailure> _handleFirebaseException(
    FirebaseException exception,
  ) async {
    final failure = _getAuthFailureOrNull(exception);

    if (failure != null) {
      return failure;
    }

    await _crashlytics.recordError(exception, StackTrace.current);

    return const AuthFailure.unexpected();
  }

  AuthFailure? _getAuthFailureOrNull(FirebaseException exception) {
    if (exception is FirebaseFunctionsException) {
      return firebaseAuthMessages[exception.details] ??
          firebaseAuthMessages[exception.code];
    }

    return firebaseAuthMessages[exception.code];
  }

  String _generateNonce() {
    const length = 32;
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(
      length,
      (_) => charset[random.nextInt(charset.length)],
    ).join();
  }

  String _getShaFromString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  Future<void> _refreshToken() async {
    final user = _firebaseAuth.tryGetFirebaseUser();
    await user.reload();
    await user.getIdToken(true);
  }

  Future<AppUser> _mapFirebaseUserToDomain() async {
    final firebaseUser = _firebaseAuth.tryGetFirebaseUser();
    final currentUser =
        await _firestore.getCurrentUserDocRef(_firebaseAuth).get();
    final userData = currentUser.data() as Map<String, dynamic>;
    final username = userData['username'] as String?;
    return firebaseUser.toDomain(username: username);
  }
}

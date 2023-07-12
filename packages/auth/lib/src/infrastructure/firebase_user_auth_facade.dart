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

class FirebaseUserAuthFacade implements UserAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _googleSignIn;
  final Logger _logger;
  final AuthCloudFunctionsFacade _authCloudFunctionsFacade;
  final FirebaseCrashlytics _crashlytics;

  FirebaseUserAuthFacade({
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
  String getCurrentUserId() {
    return _firebaseAuth.tryGetFirebaseUser().uid;
  }

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
      final phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );
      final userCredential =
          await _firebaseAuth.signInWithCredential(phoneAuthCredential);
      await _addUserToFirestoreIfNotExists(userCredential);
      final appUser = await _mapFirebaseUserToDomain();
      return right(appUser);
    } on FirebaseAuthException catch (e) {
      return left(await _handleFirebaseException(e));
    }
  }

  @override
  Future<Either<AuthFailure, AppUser>> linkPhoneNumberForUser({
    required String verificationId,
    required String smsCode,
    required String phoneNumber,
  }) async {
    try {
      final phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );
      final isPhoneNumberInUse =
          await _checkIfPhoneNumberIsAlreadyInUse(phoneNumber);
      final userCredential = isPhoneNumberInUse
          ? await _firebaseAuth.signInWithCredential(phoneAuthCredential)
          : await _linkWithCredential(phoneAuthCredential);
      await _addUserToFirestoreIfNotExists(userCredential);
      final result = await _mapFirebaseUserToDomain();
      return right(result);
    } on FirebaseAuthException catch (e) {
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
      return left(await _handleFirebaseException(e));
    } on DioError catch (e) {
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
      final result = await _firebaseAuth.signInWithEmailLink(
        email: email,
        emailLink: link.toString(),
      );
      await _addUserToFirestoreIfNotExists(result);
      final appUser = await _mapFirebaseUserToDomain();
      return right(appUser);
    } on FirebaseAuthException catch (e) {
      return left(await _handleFirebaseException(e));
    } on DioError catch (e) {
      return left(await _handleDioError(e));
    }
  }

  @override
  Future<Either<AuthFailure, AppUser>> linkEmailForUser({
    required String email,
    required Uri link,
  }) async {
    try {
      if (!_firebaseAuth.isSignInWithEmailLink(link.toString())) {
        return left(const AuthFailure.invalidLink());
      }
      final isEmailInUse = await _checkIfEmailIsAlreadyInUse(email);
      final userCredential = isEmailInUse
          ? await _firebaseAuth.signInWithEmailLink(
              email: email,
              emailLink: link.toString(),
            )
          : await _linkWithEmailCredential(email: email, link: link);
      await _addUserToFirestoreIfNotExists(userCredential);
      final appUser = await _mapFirebaseUserToDomain();
      return right(appUser);
    } on FirebaseAuthException catch (e) {
      return left(await _handleFirebaseException(e));
    } on DioError catch (e) {
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
      final userCredential = await _signInWithGoogleCredential(googleAuth);
      await _checkIfUserCanSignIn(userCredential);
      await _addUserToFirestoreIfNotExists(userCredential);
      final appUser = await _mapFirebaseUserToDomain();
      return right(appUser);
    } on FirebaseAuthException catch (e) {
      return left(await _handleFirebaseException(e));
    } on DioError catch (e) {
      await _signOut();
      return left(await _handleDioError(e));
    } on PlatformException catch (e) {
      _logger.e(e);
      return left(const AuthFailure.unavailable());
    }
  }

  @override
  Future<Either<AuthFailure, AppUser>> linkGoogleForUser() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.canceledByUser());
      }
      final googleAuth = await googleUser.authentication;
      final isEmailInUse = await _checkIfEmailIsAlreadyInUse(googleUser.email);
      final userCredential = isEmailInUse
          ? await _signInWithGoogleCredential(googleAuth)
          : await _linkWithWithGoogleCredential(googleAuth);
      if (isEmailInUse) {
        await _checkIfUserCanSignIn(userCredential);
      }
      await _addUserToFirestoreIfNotExists(userCredential);
      final appUser = await _mapFirebaseUserToDomain();
      return right(appUser);
    } on FirebaseAuthException catch (e) {
      return left(await _handleFirebaseException(e));
    } on DioError catch (e) {
      await _signOut();
      return left(await _handleDioError(e));
    } on PlatformException catch (e) {
      _logger.e(e);
      return left(const AuthFailure.unavailable());
    }
  }

  @override
  Future<Either<AuthFailure, AppUser>> signInWithAppleAsUser() async {
    try {
      final appleCredential = await _getAppleOAuthCredential();
      final userCredential =
          await _firebaseAuth.signInWithCredential(appleCredential);
      await _checkIfUserCanSignIn(userCredential);
      await _addUserToFirestoreIfNotExists(userCredential);
      final appUser = await _mapFirebaseUserToDomain();
      return right(appUser);
    } on FirebaseAuthException catch (e) {
      return left(await _handleFirebaseException(e));
    } on PlatformException catch (e) {
      _logger.e(e);
      return left(const AuthFailure.unavailable());
    } on DioError catch (e) {
      await _signOut();
      return left(await _handleDioError(e));
    } on SignInWithAppleAuthorizationException catch (e) {
      _logger.e(e);
      if (e.code == AuthorizationErrorCode.canceled) {
        return left(const AuthFailure.canceledByUser());
      }
      return left(const AuthFailure.unavailable());
    }
  }

  @override
  Future<Either<AuthFailure, AppUser>> linkAppleForUser() async {
    try {
      final appleCredential = await _getAppleOAuthCredential();
      try {
        final userCredential = await _linkWithCredential(appleCredential);
        await _addUserToFirestoreIfNotExists(userCredential);
        final appUser = await _mapFirebaseUserToDomain();
        return right(appUser);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          final userCredential =
              await _firebaseAuth.signInWithCredential(appleCredential);
          await _checkIfUserCanSignIn(userCredential);
          final appUser = await _mapFirebaseUserToDomain();
          return right(appUser);
        }
        return left(await _handleFirebaseException(e));
      }
    } on SignInWithAppleAuthorizationException catch (e) {
      _logger.e(e);
      if (e.code == AuthorizationErrorCode.canceled) {
        return left(const AuthFailure.canceledByUser());
      }
      return left(const AuthFailure.unavailable());
    } on PlatformException catch (e) {
      _logger.e(e);
      return left(const AuthFailure.unavailable());
    } on DioError catch (e) {
      await _signOut();
      return left(await _handleDioError(e));
    } on FirebaseAuthException catch (e) {
      return left(await _handleFirebaseException(e));
    }
  }

  @override
  Future<Either<AuthFailure, AppUser>> signInAnonymouslyAsUser() async {
    try {
      final userCredential = await _firebaseAuth.signInAnonymously();
      final user = userCredential.user!;
      return right(user.toDomain());
    } on FirebaseAuthException catch (e) {
      return left(await _handleFirebaseException(e));
    }
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
  bool checkIfPhoneNumberIsVerified() {
    return _firebaseAuth.tryGetFirebaseUser().phoneNumber.isNotNullOrEmpty;
  }

  @override
  bool checkIfUserIsAnonymous() {
    return _firebaseAuth.tryGetFirebaseUser().isAnonymous;
  }

  @override
  bool checkIfUserIsSignedIn() {
    return _firebaseAuth.currentUser != null;
  }

  Future<void> _signOut() {
    return Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }

  Future<void> _checkIfUserCanSignIn(UserCredential userCredential) async {
    final user = userCredential.user!;
    final userExists = await _checkIfUserExists(user);
    if (userExists) {
      await _authCloudFunctionsFacade.checkIfUserCanSignIn(user.email!);
    }
  }

  Future<void> _addUserToFirestoreIfNotExists(
    UserCredential userCredential,
  ) async {
    final userExists = await _checkIfUserExists(userCredential.user!);
    if (userExists) return;
    final user = userCredential.user!;
    await _authCloudFunctionsFacade.addUser(
      userId: user.uid,
      email: user.email,
      phoneNumber: user.phoneNumber,
    );
    await _refreshToken();
  }

  Future<UserCredential> _signInWithGoogleCredential(
    GoogleSignInAuthentication googleAuth,
  ) async {
    final authCredential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );
    return _firebaseAuth.signInWithCredential(authCredential);
  }

  Future<UserCredential> _linkWithEmailCredential({
    required String email,
    required Uri link,
  }) async {
    final emailCredential = EmailAuthProvider.credentialWithLink(
      email: email,
      emailLink: link.toString(),
    );
    return _linkWithCredential(emailCredential);
  }

  Future<UserCredential> _linkWithWithGoogleCredential(
    GoogleSignInAuthentication googleAuth,
  ) async {
    final authCredential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );
    return _linkWithCredential(authCredential);
  }

  Future<OAuthCredential> _getAppleOAuthCredential() async {
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

    return OAuthProvider('apple.com').credential(
      idToken: appleCredential.identityToken,
      rawNonce: rawNonce,
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

  Future<AuthFailure> _handleDioError(DioError error) async {
    _logger.e('Dio Error: $error');
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
    _logger.e('Firebase Exception: $exception');
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
    if (firebaseUser.isAnonymous) {
      return firebaseUser.toDomain(isAnonymous: true);
    }

    final currentUser =
        await _firestore.getCurrentUserDocRef(_firebaseAuth).get();

    if (!currentUser.exists) {
      return firebaseUser.toDomain();
    }

    final userData = currentUser.data() as Map<String, dynamic>;
    final username = userData['username'] as String?;
    final lastDailySpinAt = userData['lastDailySpinAt'] as Timestamp?;
    return firebaseUser.toDomain(
      username: username,
      lastDailySpinAt: lastDailySpinAt?.toDate(),
    );
  }

  Future<UserCredential> _linkWithCredential(AuthCredential credential) {
    return _firebaseAuth.tryGetFirebaseUser().linkWithCredential(credential);
  }

  Future<bool> _checkIfEmailIsAlreadyInUse(String? email) async {
    if (email == null) return false;
    final methods = await _firebaseAuth.fetchSignInMethodsForEmail(email);
    return methods.isNotEmpty;
  }

  Future<bool> _checkIfPhoneNumberIsAlreadyInUse(String phoneNumber) async {
    final phoneNumberQuery = await _firestore.userCollection
        .where('phoneNumber', isEqualTo: phoneNumber)
        .get();

    return phoneNumberQuery.docs.isNotEmpty;
  }

  Future<bool> _checkIfUserExists(User user) async {
    return _firestore.userCollection.doc(user.uid).exists;
  }
}

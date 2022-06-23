import 'dart:convert';
import 'dart:math';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class FirebaseAuthFacade
    implements
        UserAuthFacade,
        PartnerAuthFacade,
        SelectorAuthFacade,
        CommonAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final Logger _logger;
  final AuthCloudFunctionsFacade _authCloudFunctionsFacade;
  final FirebaseCrashlytics _crashlytics;

  FirebaseAuthFacade({
    required FirebaseAuth firebaseAuth,
    required GoogleSignIn googleSignIn,
    required Logger logger,
    required AuthCloudFunctionsFacade authCloudFunctionsFacade,
    required FirebaseCrashlytics crashlytics,
  })  : _firebaseAuth = firebaseAuth,
        _googleSignIn = googleSignIn,
        _logger = logger,
        _authCloudFunctionsFacade = authCloudFunctionsFacade,
        _crashlytics = crashlytics;

  @override
  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForPartner(
    String email,
  ) async {
    try {
      await _authCloudFunctionsFacade.checkIfPartnerCanSignIn(email);
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
  Future<Either<AuthFailure, Unit>> sendSignUpEmailLinkForPartner({
    required String email,
    required String accessCode,
  }) async {
    try {
      await _authCloudFunctionsFacade.checkIfPartnerCanSignUp(
        email: email,
        accessCode: accessCode,
      );
      await _sendSignInLinkForPartner(email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception sending sign up email link for partner EXCEPTION: $e",
      );

      return left(await _handleFirebaseException(e));
    } on DioError catch (e) {
      _logger.e(
        "Dio error sending sign up email link for partner EXCEPTION: $e",
      );

      return left(await _handleDioError(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailLinkAsPartner({
    required String email,
    required Uri link,
  }) async {
    try {
      if (!_firebaseAuth.isSignInWithEmailLink(link.toString())) {
        return left(AuthFailure(message: invalidLink));
      }

      await _signInWithEmailLink(email, link.toString());

      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception signing in with email link as partner EXCEPTION: $e",
      );

      return left(await _handleFirebaseException(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailLinkAndAccessCodeAsPartner({
    required String email,
    required Uri link,
    required String accessCode,
  }) async {
    try {
      if (!_firebaseAuth.isSignInWithEmailLink(link.toString())) {
        return left(AuthFailure(message: invalidLink));
      }

      final partner = await _signInWithEmailLink(email, link.toString());

      await _authCloudFunctionsFacade.addPartner(
        email: email,
        accessCode: accessCode,
        partnerId: partner.user!.uid,
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception signing up with email link and access code as partner EXCEPTION: $e",
      );

      return left(await _handleFirebaseException(e));
    } on DioError catch (e) {
      await signOut();
      _logger.e(
        "Dio error signing up with email link and access code as partner EXCEPTION: $e",
      );

      return left(await _handleDioError(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForSelector(
    String email,
  ) async {
    try {
      await _authCloudFunctionsFacade.checkIfSelectorCanSignIn(email);
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
  Future<Either<AuthFailure, Unit>> sendSignUpEmailLinkForSelector({
    required String email,
    required String accessCode,
  }) async {
    try {
      await _authCloudFunctionsFacade.checkIfSelectorCanSignUp(
        email: email,
        accessCode: accessCode,
      );
      await _sendSignInLinkForSelector(email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception sending sign up email link for selector EXCEPTION: $e",
      );

      return left(await _handleFirebaseException(e));
    } on DioError catch (e) {
      _logger.e(
        "Dio error sending sign up email link for selector EXCEPTION: $e",
      );

      return left(await _handleDioError(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailLinkAsSelector({
    required String email,
    required Uri link,
  }) async {
    try {
      if (!_firebaseAuth.isSignInWithEmailLink(link.toString())) {
        return left(AuthFailure(message: invalidLink));
      }

      await _signInWithEmailLink(email, link.toString());

      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception signing in with email link as selector EXCEPTION: $e",
      );

      return left(await _handleFirebaseException(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailLinkAndAccessCodeAsSelector({
    required String email,
    required Uri link,
    required String accessCode,
  }) async {
    try {
      if (!_firebaseAuth.isSignInWithEmailLink(link.toString())) {
        return left(AuthFailure(message: invalidLink));
      }

      final selector = await _signInWithEmailLink(email, link.toString());

      await _authCloudFunctionsFacade.addSelector(
        email: email,
        accessCode: accessCode,
        selectorId: selector.user!.uid,
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception signing up with email link and access code as selector EXCEPTION: $e",
      );

      return left(await _handleFirebaseException(e));
    } on DioError catch (e) {
      await signOut();
      _logger.e(
        "Dio error signing up with email link and access code as selector EXCEPTION: $e",
      );

      return left(await _handleDioError(e));
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
  Future<Either<AuthFailure, Unit>> signInWithEmailLinkAsUser({
    required String email,
    required Uri link,
  }) async {
    try {
      if (!_firebaseAuth.isSignInWithEmailLink(link.toString())) {
        return left(AuthFailure(message: invalidLink));
      }

      final result = await _signInWithEmailLink(email, link.toString());

      await _addUserToFirestoreIfNotExists(result);
      return right(unit);
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
  Future<Either<AuthFailure, Unit>> signInWithGoogleAsUser() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(AuthFailure(message: cancelledByUser));
      }

      final googleAuth = await googleUser.authentication;

      final result = await _signInWithGoogleCredential(googleAuth);

      final email = result.user!.email!;

      if (!result.additionalUserInfo!.isNewUser) {
        await _authCloudFunctionsFacade.checkIfUserCanSignIn(email);
      }

      await _addUserToFirestoreIfNotExists(result);

      return right(unit);
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
      return left(AuthFailure(message: unavailable));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithAppleAsUser() async {
    try {
      final rawNonce = _generateNonce();
      final nonce = _getShaFromString(rawNonce);

      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: nonce,
      );

      final oauthCredential = OAuthProvider('apple.com').credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );

      final result = await _firebaseAuth.signInWithCredential(oauthCredential);

      final email = result.user!.email!;

      if (!result.additionalUserInfo!.isNewUser) {
        await _authCloudFunctionsFacade.checkIfUserCanSignIn(email);
      }

      await _addUserToFirestoreIfNotExists(result);

      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Firebase Auth Exception signing in with Apple as user EXCEPTION: $e",
      );

      return left(await _handleFirebaseException(e));
    } on PlatformException catch (e) {
      _logger.e(
        "Platform Exception signing in with Apple as user EXCEPTION: $e",
      );

      return left(AuthFailure(message: unavailable));
    } on DioError catch (e) {
      await signOut();
      _logger.e(
        "Dio Error signing in with Apple as user EXCEPTION: $e",
      );

      return left(await _handleDioError(e));
    } on SignInWithAppleAuthorizationException catch (e) {
      _logger.e(
        "Apple Authorization Exception signing in with Apple as user EXCEPTION: $e",
      );

      if (e.code == AuthorizationErrorCode.canceled) {
        return left(AuthFailure(message: cancelledByUser));
      }

      return left(AuthFailure(message: unavailable));
    }
  }

  @override
  Future<Option<AppUser>> getSignedUser() async {
    try {
      final firebaseUser = _firebaseAuth.currentUser;

      if (firebaseUser == null) return none();

      final userEmail = _getUserEmail(firebaseUser);

      await _authCloudFunctionsFacade.checkIfUserCanSignIn(userEmail);

      return some(firebaseUser.toDomain());
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

      await _authCloudFunctionsFacade
          .checkIfPartnerCanSignIn(firebaseUser.email!);

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

      await _authCloudFunctionsFacade
          .checkIfSelectorCanSignIn(firebaseUser.email!);

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
  Future<Stream<Option<AppUser>>> listenToAuthStateChange() {
    return Future.value(
      _firebaseAuth
          .authStateChanges()
          .map((user) => user != null ? some(user.toDomain()) : none()),
    );
  }

  @override
  Future<Either<AuthFailure, Unit>> sendForgotPasswordEmail(
      String email) async {
    try {
      await _firebaseAuth.setLanguageCode(Intl.getCurrentLocale());
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Exception during sending password reset email: $e");

      return left(await _handleFirebaseException(e));
    }
  }

  @override
  Future<void> signOut() {
    return Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }

  Future<void> _addUserToFirestoreIfNotExists(
    UserCredential userCredential,
  ) async {
    final isNewUser = userCredential.additionalUserInfo!.isNewUser;

    if (isNewUser) {
      final user = userCredential.user!;
      await _authCloudFunctionsFacade.addUser(
        userId: user.uid,
        email: user.email!,
      );
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
        url: dotenv.env[userDynamicLinkUrl]!,
        handleCodeInApp: true,
        iOSBundleId: 'com.raverteam.tonight',
        androidPackageName: 'com.raverteam.tonight',
        dynamicLinkDomain: dotenv.env[userDynamicLinkDomain]!,
      ),
    );
  }

  Future<void> _sendSignInLinkForSelector(String email) async {
    await _firebaseAuth.sendSignInLinkToEmail(
      email: email,
      actionCodeSettings: ActionCodeSettings(
        url: dotenv.env[selectorDynamicLinkUrl]!,
        handleCodeInApp: true,
        iOSBundleId: 'com.raverteam.tonightScanner',
        androidPackageName: 'com.raverteam.tonightScanner',
        dynamicLinkDomain: dotenv.env[selectorDynamicLinkDomain]!,
      ),
    );
  }

  Future<void> _sendSignInLinkForPartner(String email) async {
    await _firebaseAuth.sendSignInLinkToEmail(
      email: email,
      actionCodeSettings: ActionCodeSettings(
        url: dotenv.env[partnerDynamicLinkUrl]!,
        handleCodeInApp: true,
        iOSBundleId: 'com.raverteam.tonightPartners',
        androidPackageName: 'com.raverteam.tonightPartners',
        dynamicLinkDomain: dotenv.env[partnerDynamicLinkDomain]!,
      ),
    );
  }

  Future<AuthFailure> _handleDioError(DioError error) async {
    if (error.type == DioErrorType.other &&
        error.message.contains('SocketException')) {
      return AuthFailure(message: unavailable);
    }

    final failure = firebaseAuthMessages[error.response?.data['message']];

    if (failure != null) {
      return AuthFailure(message: failure);
    }

    await _crashlytics.recordError(error, StackTrace.current);

    return AuthFailure(message: serverError);
  }

  Future<AuthFailure> _handleFirebaseException(
    FirebaseException exception,
  ) async {
    final failure = _getAuthFailureOrNull(exception);

    if (failure != null) {
      return AuthFailure(message: failure);
    }

    await _crashlytics.recordError(exception, StackTrace.current);

    return AuthFailure(message: serverError);
  }

  String? _getAuthFailureOrNull(FirebaseException exception) {
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
}

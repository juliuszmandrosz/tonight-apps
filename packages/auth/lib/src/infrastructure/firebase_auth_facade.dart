import 'dart:async';

import 'package:auth/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';

class FirebaseAuthFacade
    implements PartnerAuthFacade, SelectorAuthFacade, CommonAuthFacade {
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

  Future<UserCredential> _signInWithEmailLink(
    String email,
    String link,
  ) async {
    return _firebaseAuth.signInWithEmailLink(
      email: email,
      emailLink: link.toString(),
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
    final lastDailySpinAt = userData['lastDailySpinAt'] as Timestamp?;
    return firebaseUser.toDomain(
      username: username,
      lastDailySpinAt: lastDailySpinAt?.toDate(),
    );
  }
}

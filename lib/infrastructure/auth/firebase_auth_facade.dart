import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:raver/domain/auth/app_user_entity.dart';
import 'package:raver/domain/auth/auth_error_messages.dart';
import 'package:raver/domain/auth/auth_facade.dart';
import 'package:raver/domain/auth/auth_failure.dart';
import 'package:raver/infrastructure/auth/firebase_auth_messages.dart';
import 'package:raver/infrastructure/auth/firebase_user_mapper.dart';
import 'package:raver/infrastructure/core/firestore_helpers.dart';

class FirebaseAuthFacade implements AuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firestore;
  final Logger _logger;

  FirebaseAuthFacade({
    required FirebaseAuth firebaseAuth,
    required GoogleSignIn googleSignIn,
    required FirebaseFirestore firestore,
    required Logger logger,
  })  : _firebaseAuth = firebaseAuth,
        _googleSignIn = googleSignIn,
        _firestore = firestore,
        _logger = logger;

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger
          .e("Exception during sign in with login and password EXCEPTION: $e");
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // TODO - add phone / email confirmation
      await _addUser(email, result.user!.uid);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger
          .e("Exception during register with login and password EXCEPTION: $e");
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(AuthFailure(message: cancelledByUser));
      }

      final googleAuth = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      final result = await _firebaseAuth.signInWithCredential(authCredential);

      if (result.additionalUserInfo!.isNewUser) {
        _addUser(result.user!.email!, result.user!.uid);
      }

      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e("Exception during sign in with Google EXCEPTION: $e");
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  @override
  Future<Option<AppUser>> getSignedUser() {
    final firebaseUser = _firebaseAuth.currentUser;
    return Future.value(optionOf(firebaseUser?.toDomain()));
  }

  @override
  Future<void> signOut() {
    return Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }

  Future<Either<AuthFailure, Unit>> _addUser(
      String emailAddress, String userId) async {
    try {
      final userDoc = await _firestore.userDocument();
      await userDoc.set({
        'email': emailAddress,
        'favoriteEvents': [],
        'favoriteClubs': [],
      });
      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Exception during adding user to firestore: $e");
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> resetPassword(String email) async {
    try {
      await _firebaseAuth.setLanguageCode(Intl.getCurrentLocale());
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Exception during sending password reset email: $e");
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }
}

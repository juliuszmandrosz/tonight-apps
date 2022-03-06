import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:raver/domain/auth/app_user_entity.dart';
import 'package:raver/domain/auth/auth_facade.dart';
import 'package:raver/domain/auth/auth_failure.dart';
import 'package:raver/infrastructure/auth/firebase_user_mapper.dart';
import 'package:raver/infrastructure/core/firestore_helpers.dart';

class FirebaseAuthFacade implements AuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firestore;

  FirebaseAuthFacade(
      {required FirebaseAuth firebaseAuth,
      required GoogleSignIn googleSignIn,
      required FirebaseFirestore firestore})
      : _firebaseAuth = firebaseAuth,
        _googleSignIn = googleSignIn,
        _firestore = firestore;

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      final result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      await _addUser(emailAddress, result.user!.uid);
      return right(unit);
    } on FirebaseException catch (e) {
      return e.code == 'invalid-email'
          ? left(const AuthFailure.invalidEmail())
          : e.code == 'email-already-in-use'
          ? left(const AuthFailure.emailAlreadyInUse())
          : left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return e.code == 'user-not-found' || e.code == 'wrong-password'
          ? left(const AuthFailure.invalidEmailAndPasswordCombination())
          : left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuth = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);

      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() async {
    try {
      final loginResult = await FacebookAuth.instance.login();

      final authCredential =
      FacebookAuthProvider.credential(loginResult.accessToken!.token);

      await FirebaseAuth.instance.signInWithCredential(authCredential);

      return right(unit);
    } on MissingPluginException {
      // TODO - add in firebase
      return left(const AuthFailure.serverError());
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
      // TODO - add facebook sign out
    ]);
  }

  Future<Either<AuthFailure, Unit>> _addUser(String emailAddress, String userId) async {
    try {
      final userDoc = await _firestore.userDocument();
      await userDoc.set({
        'email': emailAddress,
        'favoriteEvents': [],
        'favoriteClubs': [],
      });
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.serverError());
    }
  }
}

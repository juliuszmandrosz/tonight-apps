import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';

class FirebaseAuthFacade implements AuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _googleSignIn;
  final Logger _logger;

  FirebaseAuthFacade({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firestore,
    required GoogleSignIn googleSignIn,
    required Logger logger,
  })  : _firebaseAuth = firebaseAuth,
        _firestore = firestore,
        _googleSignIn = googleSignIn,
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
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // TODO - add phone / email confirmation
      await _addUser(email);
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
        _addUser(result.user!.email!);
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

  @override
  Future<Either<AuthFailure, Unit>> sendForgotPasswordEmail(
      String email) async {
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

  @override
  Future<Either<AuthFailure, Unit>> setUsernameForUser(String username) async {
    try {
      final usersWithSameUsername = await _firestore.userCollection
          .where('username', isEqualTo: username)
          .get();
      if (usersWithSameUsername.size != 0) {
        return left(AuthFailure(message: usernameAlreadyExist));
      }
      final userDoc = _getCurrentUserDocument();
      await userDoc.update({'username': username});
      return right(unit);
    } on FirebaseException catch (exception) {
      _logger.e(
          "Exception during fetching or setting username for user EXCEPTION: $exception");
      return left(AuthFailure(message: serverError));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> changePassword(
      String oldPassword, String newPassword) async {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser == null) throw NotAuthenticatedError();
    final email = firebaseUser.email;
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email!,
        password: oldPassword,
      );
      await firebaseUser.updatePassword(newPassword);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
          "Exception during authentication when changing password EXCEPTION: $e");
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  Future<Either<AuthFailure, Unit>> _addUser(String emailAddress) async {
    try {
      final userDoc = await _getCurrentUserDocument();
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

  DocumentReference _getCurrentUserDocument() {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser == null) throw NotAuthenticatedError();

    final userDoc = _firestore.userCollection.doc(firebaseUser.uid);

    return userDoc;
  }
}

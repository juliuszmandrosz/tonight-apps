import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:raver_account_settings/domain/partner_account_facade.dart';
import 'package:raver_account_settings/domain/profile_failure.dart';
import 'package:raver_account_settings/domain/selector_account_facade.dart';
import 'package:raver_account_settings/domain/user/user_profile_entity.dart';
import 'package:raver_account_settings/domain/user_account_facade.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'dtos/user/user_profile_dto.dart';

class FirebaseAccountFacade
    implements PartnerAccountFacade, SelectorAccountFacade, UserAccountFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final FirebaseCrashlytics _firebaseCrashlytics;
  final Logger _logger;

  FirebaseAccountFacade({
    required FirebaseFirestore firestore,
    required FirebaseAuth firebaseAuth,
    required FirebaseCrashlytics firebaseCrashlytics,
    required Logger logger,
  })  : _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _firebaseCrashlytics = firebaseCrashlytics,
        _logger = logger;

  @override
  Stream<Either<ProfileFailure, UserProfile>> getProfile() async* {
    final userDoc = await _getUserDocument();
    yield* userDoc
        .snapshots()
        .map((snapshot) => right<ProfileFailure, UserProfile>(
            UserProfileDto.fromFirebase(snapshot).toDomain()))
        .handleError((e) {
      if (e is FirebaseException) {
        _firebaseCrashlytics.recordError(e, StackTrace.current);
        _logger.e("Exception during fetching profile EXCEPTION: $e");
        return left(ProfileFailure(message: serverError));
      }
    });
  }

  @override
  String getProviderForUser() {
    final firestoreUser = _getFirestoreUser();
    return firestoreUser.providerId;
  }

  @override
  Future<Either<ProfileFailure, Unit>> changePassword(
      String oldPassword, String newPassword) async {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser == null) throw NotAuthenticatedError();
    final email = firebaseUser.email;
    try {
      _firebaseAuth.signInWithEmailAndPassword(
        email: email!,
        password: oldPassword,
      );
      await firebaseUser.updatePassword(newPassword);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
          "Exception during authentication when changing password EXCEPTION: $e");
      return left(
        ProfileFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> setUsernameForUser(
    String username,
  ) async {
    try {
      final usersWithSameUsername = await _firestore.userCollection
          .where('username', isEqualTo: username)
          .get();
      if (usersWithSameUsername.size != 0) {
        return left(ProfileFailure(message: usernameExists));
      }
      final userDoc = await _getUserDocument();
      await userDoc.update({'username': username});
      return right(unit);
    } on FirebaseException catch (e) {
      _firebaseCrashlytics.recordError(e, StackTrace.current);
      _logger
          .e("Exception fetching or setting username for user EXCEPTION: $e");
      return left(ProfileFailure(message: serverError));
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> savePushNotificationsToken(
    String token,
  ) async {
    try {
      final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);
      final userDoc = await userDocRef.get();
      var user = UserProfileDto.fromFirebase(userDoc);
      final tokens = {...user.pushNotificationTokens, token}.toList();
      user = user.copyWith(pushNotificationTokens: tokens);
      await userDocRef.update(user.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      _firebaseCrashlytics.recordError(e, StackTrace.current);
      _logger.e("Exception saving push notifications token EXCEPTION: $e");
      return left(ProfileFailure(message: serverError));
    }
  }

  Future<DocumentReference> _getUserDocument() async {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser == null) throw NotAuthenticatedError();
    return _firestore.userCollection.doc(firebaseUser.uid);
  }

  AppUser _getFirestoreUser() {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser == null) throw NotAuthenticatedError();
    return firebaseUser.toDomain();
  }
}

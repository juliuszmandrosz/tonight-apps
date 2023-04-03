import 'dart:typed_data';

import 'package:account_settings/domain/user/user_profile_entity.dart';
import 'package:account_settings/domain/user_account_facade.dart';
import 'package:account_settings/domain/user_profile_failure.dart';
import 'package:auth/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';
import 'package:uuid/uuid.dart';

import 'dtos/user/user_profile_dto.dart';

class FirebaseAccountFacade implements UserAccountFacade {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;
  final FirebaseAuth _firebaseAuth;
  final FirebaseCrashlytics _firebaseCrashlytics;
  final Logger _logger;

  FirebaseAccountFacade({
    required FirebaseFirestore firestore,
    required FirebaseAuth firebaseAuth,
    required FirebaseCrashlytics firebaseCrashlytics,
    required FirebaseStorage firebaseStorage,
    required Logger logger,
  })  : _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _firebaseCrashlytics = firebaseCrashlytics,
        _firebaseStorage = firebaseStorage,
        _logger = logger;

  @override
  Stream<Either<UserProfileFailure, UserProfile>> getProfile() async* {
    final userDoc = await _getUserDocument();
    yield* userDoc
        .snapshots()
        .map((snapshot) => right<UserProfileFailure, UserProfile>(
            UserProfileDto.fromFirebase(snapshot).toDomain()))
        .handleError((e) {
      if (e is FirebaseException) {
        return left(
          handleFirebaseError<UserProfileFailure>(
            logger: _logger,
            crashlytics: _firebaseCrashlytics,
            exception: e,
            message: 'Firebase Exception getting profile EXCEPTION: $e',
            unexpectedFailure: const UserProfileFailure.unexpected(),
            permissionDeniedFailure:
                const UserProfileFailure.permissionDenied(),
          ),
        );
      }
    });
  }

  @override
  String getProviderForUser() {
    final firestoreUser = _getFirestoreUser();
    return firestoreUser.providerId;
  }

  @override
  Future<Either<UserProfileFailure, Unit>> setUsernameForUser(
    String username,
  ) async {
    try {
      final usersWithSameUsername = await _firestore.userCollection
          .where('username', isEqualTo: username)
          .get();
      if (usersWithSameUsername.size != 0) {
        return left(const UserProfileFailure.usernameExists());
      }
      final userDoc = await _getUserDocument();
      await userDoc.update({'username': username});
      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserProfileFailure>(
          logger: _logger,
          crashlytics: _firebaseCrashlytics,
          exception: e,
          message: 'Firebase Exception setting username for user EXCEPTION: $e',
          unexpectedFailure: const UserProfileFailure.unexpected(),
          permissionDeniedFailure: const UserProfileFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<UserProfileFailure, Unit>> savePushNotificationsToken(
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
      return left(
        await handleFirebaseError<UserProfileFailure>(
          logger: _logger,
          crashlytics: _firebaseCrashlytics,
          exception: e,
          message:
              'Firebase Exception saving push notifications token EXCEPTION: $e',
          unexpectedFailure: const UserProfileFailure.unexpected(),
          permissionDeniedFailure: const UserProfileFailure.permissionDenied(),
        ),
      );
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

  @override
  Future<Either<UserProfileFailure, String>> setProfilePictureForUser(
    Uint8List profilePhoto,
  ) async {
    try {
      final photoId = const Uuid().v1();
      final userId = _getFirestoreUser().id;
      final storageRef =
          _firebaseStorage.ref('users/$userId/profile_pictures/$photoId');
      final metadata = SettableMetadata(contentType: 'image/jpeg');
      final uploadTask = await storageRef.putData(profilePhoto, metadata);
      final result = await uploadTask.ref.getDownloadURL();
      return right(result);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserProfileFailure>(
          logger: _logger,
          crashlytics: _firebaseCrashlytics,
          exception: e,
          message: 'Firebase Exception uploading profile picture EXCEPTION: $e',
          unexpectedFailure: const UserProfileFailure.unexpected(),
          permissionDeniedFailure: const UserProfileFailure.permissionDenied(),
        ),
      );
    }
  }
}

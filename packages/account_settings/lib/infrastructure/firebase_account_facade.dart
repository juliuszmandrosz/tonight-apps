import 'dart:typed_data';

import 'package:account_settings/domain/user/user_account_entity.dart';
import 'package:account_settings/domain/user_account_facade.dart';
import 'package:account_settings/domain/user_account_failure.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';
import 'package:uuid/uuid.dart';

import 'dtos/user/user_account_dto.dart';

class FirebaseAccountFacade implements UserAccountFacade {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;
  final FirebaseAuth _firebaseAuth;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseAccountFacade({
    required FirebaseFirestore firestore,
    required FirebaseAuth firebaseAuth,
    required FirebaseCrashlytics firebaseCrashlytics,
    required FirebaseStorage firebaseStorage,
    required Logger logger,
  })  : _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _crashlytics = firebaseCrashlytics,
        _firebaseStorage = firebaseStorage,
        _logger = logger;

  @override
  Stream<Either<UserAccountFailure, UserAccount>> getUserAccount() async* {
    final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);
    yield* userDocRef
        .snapshots()
        .map((snapshot) => right<UserAccountFailure, UserAccount>(
            UserAccountDto.fromFirebase(snapshot).toDomain()))
        .handleError((e) {
      if (e is FirebaseException) {
        return left(
          handleFirebaseError<UserAccountFailure>(
            logger: _logger,
            crashlytics: _crashlytics,
            exception: e,
            message: 'Firebase Exception getting profile EXCEPTION: $e',
            unexpectedFailure: const UserAccountFailure.unexpected(),
            permissionDeniedFailure:
                const UserAccountFailure.permissionDenied(),
          ),
        );
      }
    });
  }

  @override
  Future<Either<UserAccountFailure, Unit>> submitOnboardingForUser({
    required String username,
    required String cityId,
    required String cityName,
    required DateTime birthdate,
    required String gender,
    required Uint8List? profilePicture,
  }) async {
    try {
      if (await _checkIfUsernameExists(username)) {
        return left(const UserAccountFailure.usernameExists());
      }
      String? pictureUrl;
      final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);
      if (profilePicture != null) {
        pictureUrl = await _uploadProfilePicture(
          profilePicture: profilePicture,
          userId: userDocRef.id,
        );
      }
      await userDocRef.update({
        'username': username,
        'profilePictureUrl': pictureUrl,
        'cityId': cityId,
        'cityName': cityName,
        'birthdate': Timestamp.fromDate(birthdate),
        'gender': gender,
      });
      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserAccountFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception submitting onboarding for EXCEPTION: $e',
          unexpectedFailure: const UserAccountFailure.unexpected(),
          permissionDeniedFailure: const UserAccountFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<UserAccountFailure, Unit>> setUsernameForUser(
    String username,
  ) async {
    try {
      if (await _checkIfUsernameExists(username)) {
        return left(const UserAccountFailure.usernameExists());
      }
      final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);
      await userDocRef.update({'username': username});
      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserAccountFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception setting username for user EXCEPTION: $e',
          unexpectedFailure: const UserAccountFailure.unexpected(),
          permissionDeniedFailure: const UserAccountFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<UserAccountFailure, Unit>> savePushNotificationsToken(
    String token,
  ) async {
    try {
      final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);
      final userDoc = await userDocRef.get();
      final user = UserAccountDto.fromFirebase(userDoc);
      final tokens = {...user.pushNotificationTokens, token}.toList();
      await userDocRef.update({'pushNotificationTokens': tokens});
      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserAccountFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message:
              'Firebase Exception saving push notifications token EXCEPTION: $e',
          unexpectedFailure: const UserAccountFailure.unexpected(),
          permissionDeniedFailure: const UserAccountFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<UserAccountFailure, Unit>> updateProfilePictureForUser({
    required Uint8List newProfilePicture,
    required String currentProfilePictureUrl,
  }) async {
    try {
      final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);
      if (currentProfilePictureUrl.isNotEmpty) {
        await _firebaseStorage.refFromURL(currentProfilePictureUrl).delete();
      }
      final pictureUrl = await _uploadProfilePicture(
        profilePicture: newProfilePicture,
        userId: userDocRef.id,
      );
      await userDocRef.update({'profilePictureUrl': pictureUrl});
      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserAccountFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception uploading profile picture EXCEPTION: $e',
          unexpectedFailure: const UserAccountFailure.unexpected(),
          permissionDeniedFailure: const UserAccountFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<UserAccountFailure, Unit>> deleteProfilePicture(
    String pictureUrl,
  ) async {
    try {
      final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);
      await userDocRef.update({'profilePictureUrl': null});
      if (pictureUrl.isNotEmpty) {
        await _firebaseStorage.refFromURL(pictureUrl).delete();
      }
      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const UserAccountFailure.unexpected());
    }
  }

  @override
  Future<Either<UserAccountFailure, UserAccount>> getUserById(String id) async {
    try {
      final result = await _firestore.userCollection
          .where(
            FieldPath.documentId,
            isEqualTo: id,
          )
          .get();
      if (result.docs.isEmpty) {
        return left(const UserAccountFailure.userNotFound());
      }
      final userDto = UserAccountDto.fromFirebase(result.docs.first);
      return right(userDto.toDomain());
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserAccountFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception getting user by id EXCEPTION: $e',
          unexpectedFailure: const UserAccountFailure.unexpected(),
          permissionDeniedFailure: const UserAccountFailure.permissionDenied(),
        ),
      );
    }
  }

  Future<String> _uploadProfilePicture({
    required String userId,
    required Uint8List profilePicture,
  }) async {
    final photoId = const Uuid().v1();
    final storageRef =
        _firebaseStorage.ref('users/$userId/profile_pictures/$photoId');
    final metadata = SettableMetadata(contentType: 'image/jpeg');
    final uploadTask = await storageRef.putData(profilePicture, metadata);
    return uploadTask.ref.getDownloadURL();
  }

  Future<bool> _checkIfUsernameExists(String username) async {
    final usersWithSameUsername = await _firestore.userCollection
        .where('username', isEqualTo: username)
        .count()
        .get();

    if (usersWithSameUsername.count > 0) {
      return true;
    }

    return false;
  }
}

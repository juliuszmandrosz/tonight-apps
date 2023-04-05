import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_facade.dart';
import 'package:tonight/domain/wall_photos/wall_photo_failure.dart';
import 'package:tonight/infrastructure/wall_photos/dtos/wall_photo_dto.dart';
import 'package:uuid/uuid.dart';

class FirebaseWallPhotoFacade implements WallPhotoFacade {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final FirebaseAuth _auth;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseWallPhotoFacade(this._firestore,
      this._storage,
      this._auth,
      this._crashlytics,
      this._logger,);

  @override
  Future<Either<WallPhotoFailure, Unit>> addPhoto({
    required String clubId,
    required String clubName,
    required String eventId,
    required String eventName,
    required DateTime eventEndDateTime,
    required Uint8List photo,
  }) async {
    try {
      final user = await _firestore.getCurrentUserDocRef(_auth).get();
      final photoUrl = await _uploadPhoto(
        clubId: clubId,
        photo: photo,
      );
      final wallPhoto = WallPhoto(
        photoUrl: photoUrl,
        clubId: clubId,
        clubName: clubName,
        eventId: eventId,
        eventName: eventName,
        userId: user.id,
        username: user['username'],
        eventEndDateTime: eventEndDateTime,
      );
      final wallPhotoDto = WallPhotoDto.fromDomain(wallPhoto);
      await _firestore.wallPhotos.doc(wallPhoto.id).set(wallPhotoDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<WallPhotoFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception adding wall photo EXCEPTION: $e',
          unexpectedFailure: const WallPhotoFailure.unexpected(),
          permissionDeniedFailure: const WallPhotoFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<WallPhotoFailure, List<WallPhoto>>> getPhotos({
    int pageSize = 20,
    WallPhoto? lastPhoto,
  }) async {
    try {
      var query = _firestore.wallPhotos
          .orderBy('createdAt', descending: true)
          .limit(pageSize);

      if (lastPhoto != null) {
        final lastDoc = await _firestore.wallPhotos.doc(lastPhoto.id).get();
        query = query.startAfterDocument(lastDoc);
      }

      final result = await query.get();

      return right(
        result.docs
            .map((photo) => WallPhotoDto.fromFirebase(photo).toDomain())
            .toList(),
      );
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<WallPhotoFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception getting wall photos EXCEPTION: $e',
          unexpectedFailure: const WallPhotoFailure.unexpected(),
          permissionDeniedFailure: const WallPhotoFailure.permissionDenied(),
        ),
      );
    }
  }

  Future<String> _uploadPhoto({
    required String clubId,
    required Uint8List photo,
  }) async {
    final photoId = const Uuid().v1();
    final storageRef = _storage.ref('clubs/$clubId/wall_photos/$photoId');
    final metadata = SettableMetadata(contentType: 'image/jpeg');
    final uploadTask = await storageRef.putData(photo, metadata);
    return uploadTask.ref.getDownloadURL();
  }
}

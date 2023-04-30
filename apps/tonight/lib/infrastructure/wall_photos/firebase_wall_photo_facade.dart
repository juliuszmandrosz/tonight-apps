import 'dart:typed_data';

import 'package:account_settings/infrastructure/dtos/user/user_account_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_facade.dart';
import 'package:tonight/domain/wall_photos/wall_photo_failure.dart';
import 'package:tonight/infrastructure/wall_photos/dtos/wall_photo_dto.dart';
import 'package:tonight/infrastructure/wall_photos/filters/show_photos_from_clubs_in_range_filter.dart';
import 'package:tonight/infrastructure/wall_photos/filters/wall_photo_filters.dart';
import 'package:uuid/uuid.dart';

class FirebaseWallPhotoFacade implements WallPhotoFacade {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final FirebaseAuth _auth;
  final FirebaseCrashlytics _crashlytics;
  final Dio _dio;
  final Logger _logger;

  FirebaseWallPhotoFacade(
    this._firestore,
    this._storage,
    this._auth,
    this._crashlytics,
    this._logger,
    this._dio,
  );

  @override
  Future<Either<WallPhotoFailure, Unit>> addPhoto({
    required String venueId,
    required String venueName,
    required LatLng venueLocation,
    required String eventId,
    required String eventName,
    required DateTime eventEndDateTime,
    required Uint8List photo,
    required LatLng? photoLocation,
  }) async {
    try {
      final userDoc = await _firestore.getCurrentUserDocRef(_auth).get();
      final user = UserAccountDto.fromFirebase(userDoc);
      final photoUrl = await _uploadPhoto(
        eventId: eventId,
        photo: photo,
      );
      final wallPhoto = WallPhoto(
        photoUrl: photoUrl,
        venueId: venueId,
        venueName: venueName,
        venueLocation: venueLocation,
        eventId: eventId,
        eventName: eventName,
        userId: user.id!,
        eventEndDateTime: eventEndDateTime,
        photoLocation: photoLocation,
        username: user.username,
        userProfilePhotoUrl: user.profilePictureUrl,
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
  Future<Either<WallPhotoFailure, List<WallPhoto>>> getWallPhotos({
    required Option<LatLng> userLocation,
    int pageSize = 20,
    int offset = 0,
  }) async {
    try {
      final userDoc = await _firestore.getCurrentUserDocRef(_auth).get();
      final result = await _getWallPhotosFromApi(
        userLocation: userLocation,
        userId: userDoc.id,
        offset: offset,
        pageSize: pageSize,
      );
      return right(
        result.map((doc) => WallPhotoDto.fromApi(doc).toDomain()).toList(),
      );
    } on DioError catch (e) {
      return left(
        await handleDioError<WallPhotoFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          error: e,
          message: 'Firebase Exception getting wall photos EXCEPTION: $e',
          unexpectedFailure: const WallPhotoFailure.unexpected(),
          socketFailure: const WallPhotoFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<WallPhotoFailure, List<WallPhoto>>> getUserPhotos({
    WallPhoto? lastPhoto,
    int pageSize = 20,
  }) async {
    try {
      final user = _firestore.getCurrentUserDocRef(_auth);
      var query = _firestore.wallPhotos
          .where('userId', isEqualTo: user.id)
          .orderBy('createdAt', descending: true)
          .limit(pageSize);
      if (lastPhoto != null) {
        final lastDoc = await _firestore.wallPhotos.doc(lastPhoto.id).get();
        query = query.startAfterDocument(lastDoc);
      }
      final result = await query.get();
      return right(
        result.docs
            .map((doc) => WallPhotoDto.fromFirebase(doc).toDomain())
            .toList(),
      );
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<WallPhotoFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception getting user photos EXCEPTION: $e',
          unexpectedFailure: const WallPhotoFailure.unexpected(),
          permissionDeniedFailure: const WallPhotoFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<WallPhotoFailure, List<WallPhoto>>> getEventPhotos({
    required String eventId,
    WallPhoto? lastPhoto,
    int pageSize = 20,
  }) async {
    try {
      var query = _firestore.wallPhotos
          .where('eventId', isEqualTo: eventId)
          .orderBy('createdAt', descending: true)
          .limit(pageSize);
      if (lastPhoto != null) {
        final lastDoc = await _firestore.wallPhotos.doc(lastPhoto.id).get();
        query = query.startAfterDocument(lastDoc);
      }
      final result = await query.get();
      return right(
        result.docs
            .map((doc) => WallPhotoDto.fromFirebase(doc).toDomain())
            .toList(),
      );
    } on FirebaseException catch (e) {
      _logger.e(e);
      _crashlytics.recordError(e, StackTrace.current);
      return left(const WallPhotoFailure.unexpected());
    }
  }

  Future<List<dynamic>> _getWallPhotosFromApi({
    required Option<LatLng> userLocation,
    required String userId,
    required int pageSize,
    required int offset,
  }) async {
    const endpoint = 'wallPhotos/getPhotos';
    final pageNumber = ((offset + 1) / pageSize).ceil();
    final filters = _getWallPhotoFilters(
      userId: userId,
      userLocation: userLocation,
    );
    Logger().i(filters.buildFilters());
    final data = {
      'query': '',
      'queryBy': 'venueName',
      'filterBy': filters.buildFilters(),
      'pageNumber': pageNumber,
      'pageSize': pageSize,
      'sortBy': 'createdAt:desc',
    };
    final response = await _dio.post(
      endpoint,
      data: data,
    );
    return response.data as List<dynamic>;
  }

  WallPhotoFilters _getWallPhotoFilters({
    required Option<LatLng> userLocation,
    required String userId,
  }) {
    return WallPhotoFilters.empty().copyWith(
      showPhotosFromClubsInRangeFilter: ShowPhotosFromClubsInRangeFilter(
        userLocation: userLocation,
        maxDistance: 50,
      ),
    );
  }

  Future<String> _uploadPhoto({
    required String eventId,
    required Uint8List photo,
  }) async {
    final photoId = const Uuid().v1();
    final storageRef = _storage.ref('events/$eventId/wall_photos/$photoId');
    final metadata = SettableMetadata(contentType: 'image/jpeg');
    final uploadTask = await storageRef.putData(photo, metadata);
    return uploadTask.ref.getDownloadURL();
  }
}

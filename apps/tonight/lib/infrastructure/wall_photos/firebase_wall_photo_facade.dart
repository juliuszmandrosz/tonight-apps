import 'dart:typed_data';

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
import 'package:tonight/infrastructure/messages/dto/message_dto.dart';
import 'package:tonight/infrastructure/participants/dtos/participant_dto.dart';
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
  Future<Either<WallPhotoFailure, Unit>> addWallPhoto(WallPhoto photo) async {
    try {
      await _firestore.runTransaction((tx) async {
        final participantRef =
            _firestore.rooms.doc(photo.eventId).participants.doc(photo.userId);
        final existingParticipant = await tx.get(participantRef);

        final wallPhotoDto = WallPhotoDto.fromDomain(photo);
        final wallPhotoRef = _firestore.wallPhotos.doc(photo.id);

        tx.set(wallPhotoRef, wallPhotoDto.toJson());

        if (existingParticipant.exists) return;

        final participantDto = ParticipantDto(
          username: photo.username,
          userId: photo.userId,
          profilePictureUrl: photo.userProfilePhotoUrl,
        );

        final messageId = const Uuid().v1();
        final messageDto = MessageDto(
          id: messageId,
          userId: photo.userId,
          username: photo.username,
          userPictureUrl: photo.userProfilePhotoUrl,
          text: 'joined',
          createdAt: DateTime.now(),
          isJoinedInfo: true,
        );

        final messageRef =
            _firestore.rooms.doc(photo.eventId).messages.doc(messageId);

        tx.set(participantRef, participantDto.toJson());
        tx.set(messageRef, messageDto.toJson());
      });
      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const WallPhotoFailure.unexpected());
    }
  }

  @override
  Future<Either<WallPhotoFailure, Unit>> deleteWallPhoto(String photoId) async {
    try {
      await _firestore.wallPhotos.doc(photoId).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const WallPhotoFailure.unexpected());
    }
  }

  @override
  Future<Either<WallPhotoFailure, String>> uploadPhoto({
    required String eventId,
    required Uint8List photo,
  }) async {
    try {
      final photoId = const Uuid().v1();
      final storageRef = _storage.ref('events/$eventId/wall_photos/$photoId');
      final metadata = SettableMetadata(contentType: 'image/jpeg');
      final uploadTask = await storageRef.putData(photo, metadata);
      final result = await uploadTask.ref.getDownloadURL();
      return right(result);
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const WallPhotoFailure.unexpected());
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
          socketFailure: const WallPhotoFailure.noConnection(),
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
      await _crashlytics.recordError(e, StackTrace.current);
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
}

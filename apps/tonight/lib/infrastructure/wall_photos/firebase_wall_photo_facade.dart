import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_facade.dart';
import 'package:tonight/domain/wall_photos/wall_photo_failure.dart';
import 'package:tonight/infrastructure/messages/dto/message_dto.dart';
import 'package:tonight/infrastructure/participants/dtos/participant_dto.dart';
import 'package:tonight/infrastructure/time_task_vouchers/dtos/time_task_voucher_dto.dart';
import 'package:tonight/infrastructure/time_tasks/dtos/time_task_dto.dart';
import 'package:tonight/infrastructure/wall_photos/dtos/wall_photo_dto.dart';
import 'package:tonight/infrastructure/wall_photos/dtos/wall_photo_report_dto.dart';
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
      return await _firestore.runTransaction((tx) async {
        final participantRef =
            _firestore.rooms.doc(photo.eventId).participants.doc(photo.userId);
        final existingParticipant = await tx.get(participantRef);

        if (photo.timeTaskId != null) {
          final currentUserRef = _firestore.getCurrentUserDocRef(_auth);
          final timeTaskRef = _firestore.tasks.doc(photo.timeTaskId);
          final timeTaskDoc = await tx.get(timeTaskRef);
          final timeTaskDto = TimeTaskDto.fromFirebase(timeTaskDoc);
          if (timeTaskDto.currentUsage >= timeTaskDto.poolLimit) {
            return left(const WallPhotoFailure.timeTaskLimitReached());
          }
          tx.update(timeTaskRef, {'currentUsage': FieldValue.increment(1)});
          final voucher = TimeTaskVoucherDto(
            voucherName: timeTaskDto.voucherName,
            validUntil: photo.eventEndDateTime,
            timeTaskName: timeTaskDto.timeTaskName,
            venueId: photo.venueId,
            venueName: photo.venueName,
            wallPhotoId: photo.id,
            wallPhotoUrl: photo.photoUrl,
            createdAt: DateTime.now(),
          );
          final voucherRef = _firestore.userCollection
              .doc(photo.userId)
              .timeTaskVouchers
              .doc(photo.timeTaskId!);

          tx.set(voucherRef, voucher.toJson());
          tx.update(currentUserRef, {'ticketsCount': FieldValue.increment(1)});
        }

        final wallPhotoDto = WallPhotoDto.fromDomain(photo);
        final wallPhotoRef = _firestore.wallPhotos.doc(photo.id);

        tx.set(wallPhotoRef, wallPhotoDto.toJson());

        if (existingParticipant.exists) return right(unit);

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
        final roomRef = _firestore.rooms.doc(photo.eventId);

        tx.set(participantRef, participantDto.toJson());
        tx.set(messageRef, messageDto.toJson());
        tx.update(
          roomRef,
          {
            'participantIds': FieldValue.arrayUnion([photo.userId]),
            'lastMessageId': messageDto.id,
            'lastMessageText': messageDto.text,
            'lastMessageUsername': messageDto.username,
            'lastMessageCreatedAt': Timestamp.fromDate(messageDto.createdAt),
            'isLastMessageJoinedInfo': true,
            'isLastMessageLeftInfo': false,
          },
        );
        return right(unit);
      });
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const WallPhotoFailure.unexpected());
    }
  }

  @override
  Future<Either<WallPhotoFailure, Unit>> deleteWallPhoto(
      WallPhoto photo) async {
    try {
      await _firestore.wallPhotos.doc(photo.id).delete();
      if (photo.photoUrl.isNotEmpty) {
        await _storage.refFromURL(photo.photoUrl).delete();
      }
      if (photo.timeTaskId.isNotNullOrEmpty) {
        await _firestore.runTransaction((tx) async {
          final timeTaskRef = _firestore.userCollection
              .doc(photo.userId)
              .timeTaskVouchers
              .doc(photo.timeTaskId!);

          final currentUserRef = _firestore.getCurrentUserDocRef(_auth);

          tx.delete(timeTaskRef);
          tx.update(currentUserRef, {'ticketsCount': FieldValue.increment(-1)});
        });
      }
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
      final userId = _auth.tryGetFirebaseUser().uid;
      final storageRef =
          _storage.ref('events/$eventId/participants/$userId/photos/$photoId');
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
    required WallPhotoFilters filters,
    int pageSize = 20,
    int offset = 0,
  }) async {
    try {
      final userDoc = await _firestore.getCurrentUserDocRef(_auth).get();
      final result = await _getWallPhotosFromApi(
        filters: filters,
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

  @override
  Future<Either<WallPhotoFailure, Unit>> reportWallPhoto(
    WallPhoto photo,
  ) async {
    try {
      final currentUserId = _auth.tryGetFirebaseUser().uid;

      final reportDto = WallPhotoReportDto(
        photoId: photo.id,
        photoUrl: photo.photoUrl,
        reporterId: currentUserId,
        createdAt: DateTime.now(),
      );

      if (await _checkIfReportExists(reportDto)) {
        return left(const WallPhotoFailure.reportExists());
      }

      final reportId = const Uuid().v1();

      await _firestore.wallPhotoReports.doc(reportId).set(reportDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const WallPhotoFailure.unexpected());
    }
  }

  Future<List<dynamic>> _getWallPhotosFromApi({
    required WallPhotoFilters filters,
    required String userId,
    required int pageSize,
    required int offset,
  }) async {
    const endpoint = 'wallPhotos/getPhotos';
    final pageNumber = ((offset + 1) / pageSize).ceil();
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

  Future<bool> _checkIfReportExists(WallPhotoReportDto reportDto) async {
    final existingReportQuery = await _firestore.wallPhotoReports
        .where('reporterId', isEqualTo: reportDto.reporterId)
        .where('photoId', isEqualTo: reportDto.photoId)
        .count()
        .get();

    return existingReportQuery.count > 0;
  }
}

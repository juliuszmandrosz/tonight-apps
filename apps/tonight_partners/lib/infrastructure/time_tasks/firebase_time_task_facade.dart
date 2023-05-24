import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight_partners/domain/time_tasks/time_task_entity.dart';
import 'package:tonight_partners/domain/time_tasks/time_task_failure.dart';
import 'package:tonight_partners/domain/time_tasks/time_tasks_facade.dart';
import 'package:tonight_partners/infrastructure/time_tasks/dtos/time_task_dto.dart';

class FirebaseTimeTaskFacade implements TimeTaskFacade {
  final FirebaseFirestore _firestore;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseTimeTaskFacade(
    this._firestore,
    this._crashlytics,
    this._logger,
  );

  @override
  Future<Either<TimeTaskFailure, Unit>> sendTimeTask(TimeTask task) async {
    try {
      final timeTaskDto = TimeTaskDto.fromDomain(task);
      await _firestore.tasks.doc(task.id).set(timeTaskDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const TimeTaskFailure.unexpected());
    }
  }

  @override
  Future<Either<TimeTaskFailure, Tuple2<TimeTask, String>>> scanTimeTaskReward(
    String wallPhotoId,
  ) async {
    try {
      return await _firestore.runTransaction((tx) async {
        final wallPhotoRef = _firestore.wallPhotos.doc(wallPhotoId);
        final wallPhotoDoc = await tx.get(wallPhotoRef);
        if (!wallPhotoDoc.exists) {
          return left(const TimeTaskFailure.unexpected());
        }
        final wallPhotoData = wallPhotoDoc.data() as Map<String, dynamic>;
        final timeTaskId = wallPhotoData['timeTaskId'] as String?;
        if (timeTaskId == null) {
          return left(const TimeTaskFailure.unexpected());
        }
        final timeTaskRef = _firestore.tasks.doc(timeTaskId);
        final timeTaskDoc = await tx.get(timeTaskRef);
        final timeTaskDto = TimeTaskDto.fromFirebase(timeTaskDoc);
        if (timeTaskDto.isRewardAcquired) {
          return left(const TimeTaskFailure.rewardAlreadyAcquired());
        }
        final photoUrl = wallPhotoData['photoUrl'] as String;
        tx.update(
          timeTaskRef,
          timeTaskDto.copyWith(isRewardAcquired: true).toJson(),
        );
        return right(tuple2(timeTaskDto.toDomain(), photoUrl));
      });
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const TimeTaskFailure.unexpected());
    }
  }
}

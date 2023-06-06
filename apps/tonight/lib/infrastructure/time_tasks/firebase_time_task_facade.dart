import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/time_tasks/time_task_entity.dart';
import 'package:tonight/domain/time_tasks/time_task_facade.dart';
import 'package:tonight/domain/time_tasks/time_task_failure.dart';
import 'package:tonight/infrastructure/time_tasks/dtos/time_task_dto.dart';

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
  Future<Either<TimeTaskFailure, TimeTask>> getTimeTaskById(String id) async {
    try {
      final doc = await _firestore.tasks.doc(id).get();
      if (!doc.exists) {
        return left(const TimeTaskFailure.taskNotExists());
      }
      final timeTask = TimeTaskDto.fromFirebase(doc).toDomain();
      final durationInMilliseconds = timeTask.durationInMinutes * 60 * 1000;
      final diff = DateTime.now().difference(timeTask.createdAt).inMilliseconds;
      if (diff > durationInMilliseconds) {
        return left(const TimeTaskFailure.timeTaskExpired());
      }
      if (timeTask.currentUsage >= timeTask.poolLimit) {
        return left(const TimeTaskFailure.timeTaskLimitReached());
      }
      return right(timeTask);
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const TimeTaskFailure.unexpected());
    }
  }
}

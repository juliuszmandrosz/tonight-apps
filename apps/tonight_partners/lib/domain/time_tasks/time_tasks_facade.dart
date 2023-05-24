import 'package:dartz/dartz.dart';
import 'package:tonight_partners/domain/time_tasks/time_task_entity.dart';
import 'package:tonight_partners/domain/time_tasks/time_task_failure.dart';

abstract class TimeTaskFacade {
  Future<Either<TimeTaskFailure, Unit>> sendTimeTask(TimeTask task);

  /// Returns time tasks and photo url
  Future<Either<TimeTaskFailure, Tuple2<TimeTask, String>>> scanTimeTaskReward(
    String wallPhotoId,
  );
}

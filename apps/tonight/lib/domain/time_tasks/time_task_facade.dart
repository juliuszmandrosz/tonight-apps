import 'package:dartz/dartz.dart';
import 'package:tonight/domain/time_tasks/time_task_entity.dart';
import 'package:tonight/domain/time_tasks/time_task_failure.dart';

abstract class TimeTaskFacade {
  Future<Either<TimeTaskFailure, TimeTask>> getTimeTaskById(String id);
}

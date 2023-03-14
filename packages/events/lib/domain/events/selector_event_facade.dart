import 'package:dartz/dartz.dart';
import 'package:events/domain/domain.dart';
import 'package:events/domain/events/failures/selector_event_failure.dart';

abstract class SelectorEventFacade {
  Future<Either<SelectorEventFailure, Option<Event>>>
      getCurrentEventFromClubAsSelector();
}

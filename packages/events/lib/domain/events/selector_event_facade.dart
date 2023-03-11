import 'package:dartz/dartz.dart';
import 'package:raver_events/domain/domain.dart';
import 'package:raver_events/domain/events/failures/selector_event_failure.dart';

abstract class SelectorEventFacade {
  Future<Either<SelectorEventFailure, Option<Event>>>
      getCurrentEventFromClubAsSelector();
}

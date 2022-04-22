import 'package:dartz/dartz.dart';
import 'package:raver_events/domain/domain.dart';

abstract class SelectorEventFacade {
  Future<Either<EventFailure, Option<Event>>>
      getCurrentEventFromClubAsSelector();
}

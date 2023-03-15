import 'package:dartz/dartz.dart';
import 'package:events/domain/domain.dart';

abstract class SelectorEventFacade {
  Future<Either<SelectorEventFailure, Option<Event>>>
      getCurrentEventFromClubAsSelector();
}

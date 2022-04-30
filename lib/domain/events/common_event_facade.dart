import 'package:dartz/dartz.dart';
import 'package:raver_events/domain/domain.dart';

abstract class CommonEventFacade {
  Future<Either<EventFailure, List<Event>>> getEvents(
    EventFilters filters,
    SortModel sortModel, {
    int pageSize = 10,
    int offset = 0,
  });
}

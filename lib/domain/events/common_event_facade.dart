import 'package:dartz/dartz.dart';
import 'package:raver_events/domain/domain.dart';
import 'package:raver_events/domain/events/failures/common_event_failure.dart';

abstract class CommonEventFacade {
  Future<Either<CommonEventFailure, List<Event>>> getEvents(
    EventFilters filters,
    SortModel sortModel, {
    int pageSize = 10,
    int offset = 0,
  });
}

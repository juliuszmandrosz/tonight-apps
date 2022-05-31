import 'package:dartz/dartz.dart';
import 'package:raver_events/domain/domain.dart';

abstract class CommonEventFacade {
  Future<Either<CommonEventFailure, List<Event>>> getEvents(
    EventFilters filters,
    SortModel sortModel, {
    int pageSize = 20,
    int offset = 0,
  });
}

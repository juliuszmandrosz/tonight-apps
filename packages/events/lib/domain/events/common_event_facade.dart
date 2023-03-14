import 'package:dartz/dartz.dart';
import 'package:events/domain/domain.dart';

abstract class CommonEventFacade {
  Future<Either<CommonEventFailure, List<Event>>> getEvents(
    EventFilters filters,
    EventSortModel sortModel, {
    int pageSize = 20,
    int offset = 0,
  });
}

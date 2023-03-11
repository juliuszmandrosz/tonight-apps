import 'package:dartz/dartz.dart';
import 'package:raver_common/domain/available_filters/available_filters_entity.dart';
import 'package:raver_common/domain/available_filters/available_filters_failure.dart';

abstract class AvailableFiltersFacade {
  Future<Either<AvailableFiltersFailure, AvailableFilters>>
      getAvailableFilters();
}

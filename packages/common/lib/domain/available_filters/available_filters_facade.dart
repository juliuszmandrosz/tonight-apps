import 'package:common/domain/available_filters/available_filters_failure.dart';
import 'package:common/domain/available_filters/entities/available_filters_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AvailableFiltersFacade {
  Future<Either<AvailableFiltersFailure, AvailableFilters>>
      getAvailableFilters();
}

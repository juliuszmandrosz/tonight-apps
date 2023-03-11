part of 'available_filters_cubit.dart';

@freezed
class AvailableFiltersState with _$AvailableFiltersState {
  const factory AvailableFiltersState.initial() = _Initial;

  const factory AvailableFiltersState.loadInProgress() = _LoadInProgress;

  const factory AvailableFiltersState.loadSuccess(
      AvailableFilters availableFilters) = _LoadSuccess;

  const factory AvailableFiltersState.loadFailure(
      AvailableFiltersFailure availableFiltersFailure) = _LoadFailure;
}

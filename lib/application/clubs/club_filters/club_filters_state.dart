part of 'club_filters_cubit.dart';

@freezed
abstract class ClubFiltersState with _$ClubFiltersState {
  const ClubFiltersState._();

  factory ClubFiltersState({required ClubFilter filter}) = _ClubFiltersState;

  factory ClubFiltersState.initial() =>
      ClubFiltersState(filter: ClubFilter.empty());
}

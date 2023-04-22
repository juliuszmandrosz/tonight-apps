part of 'club_city_picker_bloc.dart';

@freezed
class ClubCityPickerState with _$ClubCityPickerState {
  const factory ClubCityPickerState({
    required CityFilter filter,
    required bool isCityFilterApplied,
    required List<City> filteredCities,
    required List<City> availableCities,
  }) = _ClubCityPickerState;

  factory ClubCityPickerState.initial() => ClubCityPickerState(
        filter: CityFilter.empty(),
        isCityFilterApplied: false,
        filteredCities: [],
        availableCities: [],
      );
}

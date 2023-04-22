part of 'event_city_picker_bloc.dart';

@freezed
class EventCityPickerState with _$EventCityPickerState {
  const factory EventCityPickerState({
    required CityFilter filter,
    required bool isCityFilterApplied,
    required List<City> filteredCities,
    required List<City> availableCities,
  }) = _EventCityPickerState;

  factory EventCityPickerState.initial() => EventCityPickerState(
        filter: CityFilter.empty(),
        isCityFilterApplied: false,
        filteredCities: [],
        availableCities: [],
      );
}

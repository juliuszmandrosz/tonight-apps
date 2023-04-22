part of 'event_city_picker_bloc.dart';

@freezed
class EventCityPickerEvent with _$EventCityPickerEvent {
  const factory EventCityPickerEvent.pickerInitialized({
    required CityFilter filter,
    required List<City> availableCities,
  }) = _PickerInitialized;

  const factory EventCityPickerEvent.cityChanged({
    required String cityId,
    required String cityName,
  }) = _CityChanged;

  const factory EventCityPickerEvent.cityFilterResetted() = _CityFilterResetted;

  const factory EventCityPickerEvent.searchChanged(String phrase) =
      _SearchChanged;
}

part of 'club_city_picker_bloc.dart';

@freezed
class ClubCityPickerEvent with _$ClubCityPickerEvent {
  const factory ClubCityPickerEvent.pickerInitialized({
    required CityFilter filter,
    required List<City> availableCities,
  }) = _PickerInitialized;

  const factory ClubCityPickerEvent.cityChanged({
    required String cityId,
    required String cityName,
  }) = _CityChanged;

  const factory ClubCityPickerEvent.cityFilterResetted() = _CityFilterResetted;

  const factory ClubCityPickerEvent.searchChanged(String phrase) =
      _SearchChanged;
}

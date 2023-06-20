part of 'user_city_picker_bloc.dart';

@freezed
class UserCityPickerEvent with _$UserCityPickerEvent {
  const factory UserCityPickerEvent.placePicked(Place place) = _PlacePicked;

  const factory UserCityPickerEvent.searchResetted() = _SearchResetted;

  const factory UserCityPickerEvent.searchChanged(String phrase) =
      _SearchChanged;
}

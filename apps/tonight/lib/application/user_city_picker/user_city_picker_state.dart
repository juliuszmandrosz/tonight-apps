part of 'user_city_picker_bloc.dart';

@freezed
class UserCityPickerState with _$UserCityPickerState {
  const factory UserCityPickerState({
    required List<Place> places,
    required String previousPlacesSearch,
    required CubitStatus searchPlacesStatus,
    required Option<Place> selectedPlace,
    required Option<PlacesFailure> placesFailure,
  }) = _UserCityPickerState;

  factory UserCityPickerState.initial() => UserCityPickerState(
        places: [],
        previousPlacesSearch: '',
        searchPlacesStatus: CubitStatus.initial,
        selectedPlace: none(),
        placesFailure: none(),
      );
}

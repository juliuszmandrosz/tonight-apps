part of 'places_cubit.dart';

@freezed
class PlacesState with _$PlacesState {
  const PlacesState._();

  factory PlacesState({
    required List<Place> places,
    required String previousSearch,
    required CubitStatus status,
  }) = _PlacesState;

  factory PlacesState.initial() => PlacesState(
        places: [],
        previousSearch: '',
        status: CubitStatus.initial,
      );
}

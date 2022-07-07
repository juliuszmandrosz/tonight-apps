part of 'google_places_cubit.dart';

@freezed
class GooglePlacesState with _$GooglePlacesState {
  const GooglePlacesState._();

  factory GooglePlacesState({
    required List<AutocompletePrediction> predictions,
    required CubitStatus status,
  }) = _GooglePlacesState;

  factory GooglePlacesState.initial() => GooglePlacesState(
        predictions: [],
        status: CubitStatus.initial,
      );
}

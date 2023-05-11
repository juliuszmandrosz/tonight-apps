part of 'festivals_bloc.dart';

@freezed
class FestivalsState with _$FestivalsState {
  const factory FestivalsState({
    required CubitStatus getFestivalsStatus,
    required CubitStatus nextPageStatus,
    required Option<String> errorMessage,
    required List<Festival> festivals,
    required bool hasReachedMax,
    required Option<FestivalFailure> failure,
  }) = _FestivalsState;

  factory FestivalsState.initial() =>
      FestivalsState(
        getFestivalsStatus: CubitStatus.initial,
        nextPageStatus: CubitStatus.initial,
        errorMessage: none(),
        hasReachedMax: false,
        festivals: [],
        failure: none(),
      );

}

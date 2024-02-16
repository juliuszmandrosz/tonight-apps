part of 'collectives_cubit.dart';

@freezed
class CollectivesState with _$CollectivesState {
  const factory CollectivesState({
    required CubitStatus getCollectivesStatus,
    required List<Collective> collectives,
    required Option<String> snackbarMessage,
  }) = _CollectivesState;

  factory CollectivesState.initial() => CollectivesState(
        getCollectivesStatus: CubitStatus.initial,
        collectives: [],
        snackbarMessage: none(),
      );
}

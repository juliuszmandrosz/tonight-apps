part of 'selector_list_cubit.dart';

@freezed
class SelectorListState with _$SelectorListState {
  const SelectorListState._();

  factory SelectorListState({
    required CubitStatus initialStatus,
    required CubitStatus deletingStatus,
    required List<Selector> selectors,
    required Option<String> errorMessage,
  }) = _SelectorListState;

  factory SelectorListState.initial() => SelectorListState(
        initialStatus: CubitStatus.initial,
        deletingStatus: CubitStatus.initial,
        selectors: [],
        errorMessage: none(),
      );
}

part of 'discover_cubit.dart';

@freezed
class DiscoverState with _$DiscoverState {
  const factory DiscoverState({
    required DiscoverTab selectedTab,
    required PhraseFilter phraseFilter,
  }) = _DiscoverState;

  factory DiscoverState.initial() => DiscoverState(
        selectedTab: DiscoverTab.events,
        phraseFilter: PhraseFilter.empty(),
      );
}

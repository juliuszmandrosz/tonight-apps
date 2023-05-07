part of 'tonight_cubit.dart';

@freezed
class TonightState with _$TonightState {
  const factory TonightState({
    required TonightTab selectedTab,
  }) = _TonightState;

  factory TonightState.initial() => const TonightState(
        selectedTab: TonightTab.events,
      );
}

part of 'welcome_loading_cubit.dart';

@freezed
class WelcomeLoadingState with _$WelcomeLoadingState {
  const WelcomeLoadingState._();

  factory WelcomeLoadingState({
    required bool isRemoteConfigLoaded,
    required bool isLocationLoaded,
    required bool isFailure,
  }) = _WelcomeLoadingState;

  factory WelcomeLoadingState.initial() => WelcomeLoadingState(
        isRemoteConfigLoaded: false,
        isLocationLoaded: false,
        isFailure: false,
      );
}

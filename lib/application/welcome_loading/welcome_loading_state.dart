part of 'welcome_loading_cubit.dart';

@freezed
class WelcomeLoadingState with _$WelcomeLoadingState {
  const WelcomeLoadingState._();

  factory WelcomeLoadingState({
    required bool dependenciesLoaded,
    required bool isFailure,
    required bool onboardingCompleted,
  }) = _WelcomeLoadingState;

  factory WelcomeLoadingState.initial() => WelcomeLoadingState(
        dependenciesLoaded: false,
        isFailure: false,
        onboardingCompleted: false,
      );
}

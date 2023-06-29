part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    required CubitStatus signInStatus,
    required Option<String> errorMessage,
  }) = _OnboardingState;

  factory OnboardingState.initial() => OnboardingState(
        signInStatus: CubitStatus.initial,
        errorMessage: none(),
      );
}

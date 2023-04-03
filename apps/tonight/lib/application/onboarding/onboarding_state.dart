part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    required Username username,
    required FormzStatus status,
    required Option<String> errorMessage,
  }) = _OnboardingState;

  factory OnboardingState.initial() => OnboardingState(
        username: const Username.pure(),
        status: FormzStatus.pure,
        errorMessage: none(),
      );
}

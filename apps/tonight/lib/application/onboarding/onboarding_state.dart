part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    required Username username,
    required FormzStatus submissionStatus,
    required Option<String> errorMessage,
    required Option<Uint8List> userPhoto,
  }) = _OnboardingState;

  factory OnboardingState.initial() => OnboardingState(
        username: const Username.pure(),
        submissionStatus: FormzStatus.pure,
        errorMessage: none(),
        userPhoto: none(),
      );
}

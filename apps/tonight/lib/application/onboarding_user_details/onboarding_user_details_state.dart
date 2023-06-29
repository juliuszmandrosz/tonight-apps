part of 'onboarding_user_details_cubit.dart';

@freezed
class OnboardingUserDetailsState with _$OnboardingUserDetailsState {
  const factory OnboardingUserDetailsState({
    required Username username,
    required BirthdateValueObject birthdate,
    required GenderValueObject gender,
    required CityValueObject city,
    required FormzStatus submissionStatus,
    required Option<String> errorMessage,
    required Option<Uint8List> userPhoto,
  }) = _OnboardingUserDetailsState;

  factory OnboardingUserDetailsState.initial() => OnboardingUserDetailsState(
        username: const Username.pure(),
        birthdate: const BirthdateValueObject.pure(),
        gender: const GenderValueObject.pure(),
        city: const CityValueObject.pure(),
        submissionStatus: FormzStatus.pure,
        errorMessage: none(),
        userPhoto: none(),
      );
}

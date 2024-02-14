part of 'onboarding_user_details_cubit.dart';

@freezed
class OnboardingUserDetailsState with _$OnboardingUserDetailsState {
  const factory OnboardingUserDetailsState({
    required Username username,
    required BirthdateValueObject birthdate,
    required GenderValueObject gender,
    required CityValueObject city,
    required FormzStatus formStatus,
    required FormzStatus emailDialogStatus,
    required Option<String> errorMessage,
    required Option<Uint8List> userPhoto,
    required bool isNewsletterSubscribed,
    required EmailInput email,
    required bool isSignedInWithEmail,
  }) = _OnboardingUserDetailsState;

  factory OnboardingUserDetailsState.initial() => OnboardingUserDetailsState(
        username: const Username.pure(),
        birthdate: const BirthdateValueObject.pure(),
        gender: const GenderValueObject.pure(),
        city: const CityValueObject.pure(),
        formStatus: FormzStatus.pure,
        emailDialogStatus: FormzStatus.pure,
        errorMessage: none(),
        userPhoto: none(),
        isNewsletterSubscribed: false,
        email: const EmailInput.pure(),
        isSignedInWithEmail: false,
      );
}

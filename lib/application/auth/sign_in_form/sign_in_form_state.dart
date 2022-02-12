part of 'sign_in_form_cubit.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required String emailAddress,
    required String password,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: '',
        password: '',
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}

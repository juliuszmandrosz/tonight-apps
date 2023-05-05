part of 'sign_in_with_phone_number_cubit.dart';

@freezed
class SignInWithPhoneNumberState with _$SignInWithPhoneNumberState {
  const factory SignInWithPhoneNumberState({
    required String phoneNumber,
    required String smsCode,
    required Option<String> failureMessage,
    required Option<String> verificationId,
    required Option<int> resendToken,
    required CubitStatus sendSmsStatus,
    required CubitStatus verifySmsStatus,
    required Option<AppUser> user,
  }) = _SignInWithPhoneNumberState;

  factory SignInWithPhoneNumberState.initial() => SignInWithPhoneNumberState(
        phoneNumber: '',
        smsCode: '',
        failureMessage: none(),
        verificationId: none(),
        resendToken: none(),
        sendSmsStatus: CubitStatus.initial,
        verifySmsStatus: CubitStatus.initial,
        user: none(),
      );
}

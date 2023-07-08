part of 'verify_phone_number_cubit.dart';

@freezed
class VerifyPhoneNumberState with _$VerifyPhoneNumberState {
  const factory VerifyPhoneNumberState({
    required String phoneNumber,
    required String smsCode,
    required Option<String> failureMessage,
    required Option<String> verificationId,
    required Option<int> resendToken,
    required CubitStatus sendSmsStatus,
    required CubitStatus verifySmsStatus,
    required Option<AppUser> user,
  }) = _VerifyPhoneNumberState;

  factory VerifyPhoneNumberState.initial() => VerifyPhoneNumberState(
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

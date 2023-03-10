part of 'privacy_policy_cubit.dart';

@freezed
class PrivacyPolicyState with _$PrivacyPolicyState {
  const PrivacyPolicyState._();

  factory PrivacyPolicyState({
    required Option<String> documentUrl,
    required CubitStatus status,
    required Option<String> snackbarMessage,
  }) = _PrivacyPolicyState;

  factory PrivacyPolicyState.initial() => PrivacyPolicyState(
        documentUrl: none(),
        status: CubitStatus.initial,
        snackbarMessage: none(),
      );
}

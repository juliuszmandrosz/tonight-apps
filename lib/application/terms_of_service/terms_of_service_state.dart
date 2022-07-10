part of 'terms_of_service_cubit.dart';

@freezed
class TermsOfServiceState with _$TermsOfServiceState {
  const TermsOfServiceState._();

  factory TermsOfServiceState({
    required Option<String> termsOfServiceUrl,
    required CubitStatus status,
    required Option<String> snackbarMessage,
  }) = _TermsOfServiceState;

  factory TermsOfServiceState.initial() => TermsOfServiceState(
        termsOfServiceUrl: none(),
        status: CubitStatus.initial,
        snackbarMessage: none(),
      );
}

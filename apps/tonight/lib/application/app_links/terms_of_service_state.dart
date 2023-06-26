part of 'terms_of_service_cubit.dart';

@freezed
class TermsOfServiceState with _$TermsOfServiceState {
  const TermsOfServiceState._();

  factory TermsOfServiceState({
    required Option<String> url,
    required CubitStatus status,
    required Option<String> snackbarMessage,
  }) = _TermsOfServiceState;

  factory TermsOfServiceState.initial() => TermsOfServiceState(
        url: none(),
        status: CubitStatus.initial,
        snackbarMessage: none(),
      );
}

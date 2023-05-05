part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.authenticated(AppUser user) = _Authenticated;

  const factory AuthState.unauthenticated() = _Unauthenticated;

  const factory AuthState.deleteAccountInProgress() = _DeleteAccountInProgress;

  const factory AuthState.deleteAccountSuccess() = _DeleteAccountSuccess;

  const factory AuthState.deleteAccountFailure() = _DeleteAccountFailure;
}

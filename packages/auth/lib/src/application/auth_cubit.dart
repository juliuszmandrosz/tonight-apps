import 'dart:async';

import 'package:auth/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final CommonAuthFacade _authFacade;
  late StreamSubscription _authStateSubscription;

  AuthCubit(this._authFacade) : super(const AuthState.initial());

  void requestAuthCheck() async {
    final authStateChange = await _authFacade.listenToAuthStateChange();
    _authStateSubscription = authStateChange.listen(
      (user) {
        user.fold(
          () => emit(const AuthState.unauthenticated()),
          (_) => emit(const AuthState.authenticated()),
        );
      },
    );
  }

  void signOut() async {
    await _authFacade.signOut();
    emit(const AuthState.unauthenticated());
  }

  Future<void> deleteAccount() async {
    emit(const AuthState.deleteAccountInProgress());
    final result = await _authFacade.deleteAccount();
    result.fold(
      (_) => emit(const AuthState.deleteAccountFailure()),
      (_) => emit(const AuthState.deleteAccountSuccess()),
    );
  }

  @override
  Future<void> close() {
    _authStateSubscription.cancel();
    return super.close();
  }
}

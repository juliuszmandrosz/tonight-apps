import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:auth/auth.dart';

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

  @override
  Future<void> close() {
    _authStateSubscription.cancel();
    return super.close();
  }
}

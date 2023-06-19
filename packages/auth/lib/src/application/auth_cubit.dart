import 'dart:async';

import 'package:auth/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final CommonAuthFacade _commonAuthFacade;
  final UserAuthFacade _userAuthFacade;

  StreamSubscription? _authStateSubscription;
  StreamSubscription? _userSubscription;

  AuthCubit(this._commonAuthFacade, this._userAuthFacade)
      : super(const AuthState.initial());

  void listenToAuthChanges() {
    _authStateSubscription?.cancel();
    _authStateSubscription = _commonAuthFacade
        .listenToAuthStateChange()
        .debounceTime(const Duration(milliseconds: 50))
        .listen(
          (result) => result.fold(
            () => emit(const AuthState.unauthenticated()),
            (user) => emit(AuthState.authenticated(user)),
          ),
        );
  }

  String get currentUserId => _userAuthFacade.getCurrentUserId();

  bool checkIfPhoneNumberIsVerified() {
    return _userAuthFacade.checkIfPhoneNumberIsVerified();
  }

  void listenToUserChanges() {
    _userSubscription?.cancel();
    _userSubscription = _userAuthFacade
        .listenToUserChanges()
        .debounceTime(const Duration(milliseconds: 50))
        .listen(
          (result) => result.fold(
            () => emit(const AuthState.unauthenticated()),
            (user) => emit(AuthState.authenticated(user)),
          ),
        );
  }

  void signOut() async {
    await _commonAuthFacade.signOut();
    emit(const AuthState.unauthenticated());
  }

  Future<void> deleteAccount() async {
    emit(const AuthState.deleteAccountInProgress());
    final result = await _commonAuthFacade.deleteAccount();
    result.fold(
      (_) => emit(const AuthState.deleteAccountFailure()),
      (_) => emit(const AuthState.deleteAccountSuccess()),
    );
  }

  @override
  Future<void> close() {
    _authStateSubscription?.cancel();
    _userSubscription?.cancel();
    return super.close();
  }
}

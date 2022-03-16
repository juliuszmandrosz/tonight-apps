import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_auth/src/domain/auth_facade.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthFacade _authFacade;

  AuthCubit(this._authFacade) : super(const AuthState.initial());

  void requestAuthCheck() async {
    final userOption = await _authFacade.getSignedUser();
    userOption.fold(
      () => emit(const AuthState.unauthenticated()),
      (_) => emit(const AuthState.authenticated()),
    );
  }

  void signOut() async {
    await _authFacade.signOut();
    emit(const AuthState.unauthenticated());
  }
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:raver/domain/auth/auth_facade.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthFacade _authFacade;

  AuthCubit(this._authFacade) : super(const AuthState.initial());

  void requestAuthCheck() {
    final userOption = _authFacade.getSignedUser();
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

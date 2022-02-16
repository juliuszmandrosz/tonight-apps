import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/auth/auth_facade.dart';
import 'package:raver/domain/auth/auth_failure.dart';

part 'sign_in_form_cubit.freezed.dart';
part 'sign_in_form_state.dart';

class SignInFormCubit extends Cubit<SignInFormState> {
  final AuthFacade _authFacade;

  SignInFormCubit(this._authFacade) : super(SignInFormState.initial());

  void signInWithGoogle() async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
    final failureOrSuccess = await _authFacade.signInWithGoogle();
    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(failureOrSuccess),
    ));
  }

  void signInWithEmailAndPassword() async {
    await _performActionOnAuthFacadeWithEmailAndPassword(
      _authFacade.signInWithEmailAndPassword,
    );
  }

  void registerWithEmailAndPassword() async {
    await _performActionOnAuthFacadeWithEmailAndPassword(
      _authFacade.registerWithEmailAndPassword,
    );
  }

  void onPasswordChanged(String password) {
    emit(state.copyWith(
      password: password,
      authFailureOrSuccessOption: none(),
    ));
  }

  void onEmailChanged(String email) {
    emit(state.copyWith(
      emailAddress: email,
      authFailureOrSuccessOption: none(),
    ));
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required String emailAddress,
      required String password,
    })
        forwardedCall,
  ) async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));

    Either<AuthFailure, Unit> failureOrSuccess = await forwardedCall(
      emailAddress: state.emailAddress,
      password: state.password,
    );

    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }

  void signInWithFacebook() async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
    final failureOrSuccess = await _authFacade.signInWithFacebook();

    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(failureOrSuccess),
    ));
  }
}

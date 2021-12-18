import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/auth/auth_facade.dart';
import 'package:raver/domain/auth/auth_failure.dart';
import 'package:raver/domain/auth/value_objects/email_address.dart';
import 'package:raver/domain/auth/value_objects/password.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final AuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  SignInFormState get initialState => SignInFormState.initial();

  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: emailChanged,
      passwordChanged: passwordChanged,
      registerWithEmailAndPasswordPressed: registerWithEmailAndPasswordPressed,
      signInWithEmailAndPasswordPressed: signInWithEmailAndPasswordPressed,
      signInWithGooglePressed: signInWithGooglePressed,
      signInWithFacebookPressed: signInWithFacebookPressed,
    );
  }

  Stream<SignInFormState> signInWithGooglePressed(e) async* {
    yield state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );
    final failureOrSuccess = await _authFacade.signInWithGoogle();
    yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess));
  }

  Stream<SignInFormState> signInWithEmailAndPasswordPressed(e) async* {
    yield* _performActionOnAuthFacadeWithEmailAndPassword(
      _authFacade.signInWithEmailAndPassword,
    );
  }

  Stream<SignInFormState> registerWithEmailAndPasswordPressed(e) async* {
    yield* _performActionOnAuthFacadeWithEmailAndPassword(
      _authFacade.registerWithEmailAndPassword,
    );
  }

  Stream<SignInFormState> passwordChanged(e) async* {
    yield state.copyWith(
      password: Password(e.passwordStr),
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<SignInFormState> emailChanged(e) async* {
    yield state.copyWith(
      emailAddress: EmailAddress(e.emailStr),
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<SignInFormState> signInWithFacebookPressed(e) async* {
    yield state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );
    final failureOrSuccess = await _authFacade.signInWithFacebook();
    yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess));
  }
}

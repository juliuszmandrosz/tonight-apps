import 'dart:async';

import 'package:auth/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'sign_in_cubit.freezed.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final UserAuthFacade _userAuthFacade;
  final FirebaseDynamicLinks _dynamicLinks;

  late final StreamSubscription _linkSub;

  SignInCubit(this._userAuthFacade, this._dynamicLinks)
      : super(SignInState.initial()) {
    _subscribeToDynamicLinks();
  }

  Future<void> signInWithGoogle() async {
    emit(state.copyWith(signInStatus: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _userAuthFacade.signInWithGoogleAsUser();

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure),
      (user) => emit(
        state.copyWith(
          signInStatus: FormzStatus.submissionSuccess,
          user: some(user),
        ),
      ),
    );
  }

  Future<void> signInWithApple() async {
    emit(state.copyWith(signInStatus: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _userAuthFacade.signInWithAppleAsUser();

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure),
      (user) => emit(
        state.copyWith(
          signInStatus: FormzStatus.submissionSuccess,
          user: some(user),
        ),
      ),
    );
  }

  Future<void> sendSignInEmailLink() async {
    if (!_validateForm()) return;

    emit(state.copyWith(signInStatus: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _userAuthFacade.sendSignInEmailLinkForUser(
      state.email.value,
    );

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure),
      (success) => _emitLinkSentSuccess(),
    );
  }

  void emailChanged(String value) {
    final email = EmailInput.dirty(value);
    emit(
      state.copyWith(
        email: email,
      ),
    );
  }

  _subscribeToDynamicLinks() {
    _linkSub = _dynamicLinks.onLink.listen((dynamicLink) async {
      final deepLink = dynamicLink.link;
      if (deepLink.path.contains('auth')) {
        await _signInWithEmailLink(deepLink);
      }
    });
  }

  Future<void> _signInWithEmailLink(Uri link) async {
    emit(state.copyWith(signInStatus: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _userAuthFacade.signInWithEmailLinkAsUser(
      email: state.email.value,
      link: link,
    );

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure),
      (user) => emit(
        state.copyWith(
          signInStatus: FormzStatus.submissionSuccess,
          user: some(user),
        ),
      ),
    );
  }

  _validateForm() {
    emit(
      state.copyWith(
        email: EmailInput.dirty(state.email.value),
      ),
    );

    final status = Formz.validate([state.email]);

    emit(state.copyWith(signInStatus: status));
    // TODO - check this
    return status.isValidated;
  }

  _emitFailure(AuthFailure failure) {
    if (failure == const AuthFailure.canceledByUser()) {
      emit(state.copyWith(signInStatus: FormzStatus.submissionFailure));
      return;
    }
    emit(
      state.copyWith(
        errorMessage: some(getAuthErrorMessage(failure)),
        signInStatus: FormzStatus.submissionFailure,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }

  _emitLinkSentSuccess() {
    emit(
      state.copyWith(
        linkSentMessage: some(S().verificationLinkSent),
        signInStatus: FormzStatus.pure,
      ),
    );

    emit(state.copyWith(linkSentMessage: none()));
  }

  @override
  Future<void> close() {
    _linkSub.cancel();
    return super.close();
  }
}

import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_translations/raver_translations.dart';

part 'sign_in_cubit.freezed.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final UserAuthFacade _authFacade;
  final FirebaseDynamicLinks _dynamicLinks;

  late final StreamSubscription _linkSub;

  SignInCubit({
    required UserAuthFacade authFacade,
    required FirebaseDynamicLinks firebaseDynamicLinks,
  })  : _authFacade = authFacade,
        _dynamicLinks = firebaseDynamicLinks,
        super(SignInState.initial()) {
    _subscribeToDynamicLinks();
  }

  Future<void> signInWithGoogle() async {
    emit(state.copyWith(signInStatus: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _authFacade.signInWithGoogleAsUser();

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure),
      (success) => emit(
        state.copyWith(signInStatus: FormzStatus.submissionSuccess),
      ),
    );
  }

  Future<void> sendSignInEmailLink() async {
    if (!_validateForm()) return;

    emit(state.copyWith(signInStatus: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _authFacade.sendSignInEmailLinkForUser(
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
      final Uri? deepLink = dynamicLink.link;
      if (deepLink != null) {
        await _signInWithEmailLink(deepLink);
        _linkSub.cancel();
      }
    });
  }

  Future<void> _signInWithEmailLink(Uri link) async {
    emit(state.copyWith(signInStatus: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _authFacade.signInWithEmailLinkAsUser(
      email: state.email.value,
      link: link,
    );

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure),
      (success) => emit(
        state.copyWith(
          signInStatus: FormzStatus.submissionSuccess,
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
    return status.isValidated;
  }

  _emitFailure(AuthFailure failure) {
    emit(
      state.copyWith(
        errorMessage: some(failure.message),
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
}

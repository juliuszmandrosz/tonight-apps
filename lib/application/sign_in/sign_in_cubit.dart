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
  final PartnerAuthFacade _authFacade;
  final FirebaseDynamicLinks _dynamicLinks;

  late final StreamSubscription _linkSub;

  SignInCubit({
    required PartnerAuthFacade partnerAuthFacade,
    required FirebaseDynamicLinks firebaseDynamicLinks,
  })  : _authFacade = partnerAuthFacade,
        _dynamicLinks = firebaseDynamicLinks,
        super(SignInState.initial()) {
    _subscribeToDynamicLinks();
  }

  Future<void> sendSignInWithEmailLink() async {
    if (!_validateForm()) return;

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _authFacade.sendSignInEmailLinkForPartner(
      email: state.email.value,
      accessCode: state.accessCode,
    );

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure),
      (success) => _emitLinkSentSuccess(),
    );
  }

  void emailChanged(String value) {
    final email = EmailInput.dirty(value);
    emit(state.copyWith(email: email));
  }

  void accessCodeChanged(String value) {
    emit(state.copyWith(accessCode: value));
  }

  _subscribeToDynamicLinks() {
    _linkSub = _dynamicLinks.onLink.listen((dynamicLink) async {
      final Uri? deepLink = dynamicLink.link;
      if (deepLink != null) {
        await _signInWithEmailLink(deepLink);
      }
    });
  }

  Future<void> _signInWithEmailLink(Uri link) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _authFacade.signInWithEmailLinkAsPartner(
      email: state.email.value,
      accessCode: state.accessCode,
      link: link,
    );

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure),
      (success) => emit(
        state.copyWith(
          status: FormzStatus.submissionSuccess,
        ),
      ),
    );
  }

  _validateForm() {
    emit(state.copyWith(email: EmailInput.dirty(state.email.value)));

    final status = Formz.validate([state.email]);

    emit(state.copyWith(status: status));
    return status.isValidated;
  }

  _emitFailure(AuthFailure failure) {
    emit(
      state.copyWith(
        errorMessage: some(getAuthErrorMessage(failure)),
        status: FormzStatus.submissionFailure,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }

  _emitLinkSentSuccess() {
    emit(
      state.copyWith(
        linkSentMessage: some(S().verificationLinkSent),
        status: FormzStatus.pure,
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

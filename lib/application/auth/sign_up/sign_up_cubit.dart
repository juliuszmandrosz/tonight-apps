import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_translations/raver_translations.dart';

part 'sign_up_cubit.freezed.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final PartnerAuthFacade _authFacade;
  final FirebaseDynamicLinks _dynamicLinks;

  late final StreamSubscription _linkSub;

  SignUpCubit({
    required PartnerAuthFacade partnerAuthFacade,
    required FirebaseDynamicLinks firebaseDynamicLinks,
  })  : _authFacade = partnerAuthFacade,
        _dynamicLinks = firebaseDynamicLinks,
        super(SignUpState.initial()) {
    _subscribeToDynamicLinks();
  }

  Future<void> sendSignUpWithEmailLink() async {
    if (!_validateForm()) return;

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _authFacade.sendSignUpEmailLinkForPartner(
      email: state.email.value,
      accessCode: state.accessCode.value,
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
    final accessCode = AccessCodeInput.dirty(value);
    emit(state.copyWith(accessCode: accessCode));
  }

  _subscribeToDynamicLinks() {
    _linkSub = _dynamicLinks.onLink.listen((dynamicLink) async {
      final Uri? deepLink = dynamicLink.link;
      if (deepLink != null) {
        await _signUpWithEmailLink(deepLink);
      }
    });
  }

  Future<void> _signUpWithEmailLink(Uri link) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final failureOrSuccess =
        await _authFacade.signUpWithEmailLinkAndAccessCodeAsPartner(
      email: state.email.value,
      accessCode: state.accessCode.value,
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
    emit(
      state.copyWith(
        email: EmailInput.dirty(state.email.value),
        accessCode: AccessCodeInput.dirty(state.accessCode.value),
      ),
    );

    final status = Formz.validate([
      state.email,
      state.accessCode,
    ]);

    emit(state.copyWith(status: status));
    return status.isValidated;
  }

  _emitFailure(AuthFailure failure) {
    emit(
      state.copyWith(
        errorMessage: some(failure.message),
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

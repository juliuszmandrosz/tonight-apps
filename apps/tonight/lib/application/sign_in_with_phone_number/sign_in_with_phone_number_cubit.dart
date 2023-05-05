import 'dart:async';

import 'package:auth/auth.dart';
import 'package:common/application/application.dart';
import 'package:common/extensions/option_extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_with_phone_number_cubit.freezed.dart';
part 'sign_in_with_phone_number_state.dart';

class SignInWithPhoneNumberCubit extends Cubit<SignInWithPhoneNumberState> {
  final UserAuthFacade _authFacade;
  StreamSubscription<Either<AuthFailure, Tuple2<String, int?>>>?
      _phoneNumberSignInSubscription;

  SignInWithPhoneNumberCubit(this._authFacade)
      : super(SignInWithPhoneNumberState.initial());

  void changeSmsCode(String smsCode) {
    emit(state.copyWith(smsCode: smsCode));
  }

  void changePhoneNumber(String phoneNumber) {
    emit(state.copyWith(phoneNumber: phoneNumber));
  }

  void reset() {
    emit(
      state.copyWith(
        phoneNumber: '',
        verificationId: none(),
      ),
    );
  }

  void sendSmsVerificationCode() {
    _phoneNumberSignInSubscription?.cancel();
    emit(state.copyWith(sendSmsStatus: CubitStatus.loading));
    _phoneNumberSignInSubscription = _authFacade
        .sendSmsVerificationCodeForUser(
            phoneNumber: state.phoneNumber,
            resendToken: state.resendToken.fold(() => null, (token) => token))
        .listen(
      (failureOrSuccess) {
        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(
                sendSmsStatus: CubitStatus.failure,
                failureMessage: some(getAuthErrorMessage(failure)),
              ),
            );
            emit(state.copyWith(failureMessage: none()));
          },
          (result) => emit(
            state.copyWith(
              sendSmsStatus: CubitStatus.success,
              verificationId: some(result.value1),
              resendToken:
                  result.value2 != null ? some(result.value2!) : none(),
            ),
          ),
        );
      },
    );
  }

  Future<void> verifySmsCode() async {
    emit(state.copyWith(verifySmsStatus: CubitStatus.loading));
    final result = await _authFacade.signInWithPhoneNumberAsUser(
      smsCode: state.smsCode,
      verificationId: state.verificationId.getOrCrash(),
    );
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            verifySmsStatus: CubitStatus.failure,
            failureMessage: some(getAuthErrorMessage(failure)),
          ),
        );
        emit(state.copyWith(failureMessage: none()));
      },
      (user) => emit(
        state.copyWith(
          verifySmsStatus: CubitStatus.success,
          user: some(user),
        ),
      ),
    );
  }

  @override
  Future<void> close() {
    _phoneNumberSignInSubscription?.cancel();
    return super.close();
  }
}

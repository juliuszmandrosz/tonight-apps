import 'package:auth/auth.dart';
import 'package:common/application/application.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_cubit.freezed.dart';
part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final UserAuthFacade _userAuthFacade;

  OnboardingCubit(this._userAuthFacade) : super(OnboardingState.initial());

  signInAnonymously() async {
    emit(state.copyWith(signInStatus: CubitStatus.loading));
    final result = await _userAuthFacade.signInAnonymouslyAsUser();
    result.fold(
      (failure) {
        emit(state.copyWith(signInStatus: CubitStatus.failure));
        _showMessage(getAuthErrorMessage(failure));
      },
      (_) => emit(state.copyWith(signInStatus: CubitStatus.success)),
    );
  }

  _showMessage(String message) {
    emit(state.copyWith(errorMessage: some(message)));
    emit(state.copyWith(errorMessage: none()));
  }
}

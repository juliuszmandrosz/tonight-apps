import 'package:account_settings/account_settings.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/auth/form_inputs/username.dart';

part 'username_cubit.freezed.dart';
part 'username_state.dart';

class UsernameCubit extends Cubit<UsernameState> {
  final UserAccountFacade _userAccountFacade;

  UsernameCubit(this._userAccountFacade) : super(UsernameState.initial());

  Future<void> setUsernameForUser() async {
    if (!_validateForm()) return;

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final failureOrSuccess =
        await _userAccountFacade.setUsernameForUser(state.username.value);

    failureOrSuccess.fold(
        (failure) => _emitFailure(failure),
        (success) =>
            emit(state.copyWith(status: FormzStatus.submissionSuccess)));
  }

  void usernameChanged(String value) {
    final username = Username.dirty(value);
    emit(state.copyWith(username: username));
  }

  _validateForm() {
    emit(
      state.copyWith(
        username: Username.dirty(state.username.value),
      ),
    );

    final status = Formz.validate([
      state.username,
    ]);
    emit(state.copyWith(status: status));

    return status.isValidated;
  }

  _emitFailure(UserProfileFailure failure) {
    emit(
      state.copyWith(
        errorMessage: some(failure.message),
        status: FormzStatus.submissionFailure,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }
}

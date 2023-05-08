import 'package:account_settings/account_settings.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'update_profile_picture_cubit.freezed.dart';
part 'update_profile_picture_state.dart';

class UpdateProfilePictureCubit extends Cubit<UpdateProfilePictureState> {
  final UserAccountFacade _userAccountFacade;

  UpdateProfilePictureCubit(this._userAccountFacade)
      : super(UpdateProfilePictureState.initial());

  Future<void> updateProfilePicture(String currentPictureUrl) async {
    if (state.profilePicture.isNone()) {
      _showErrorMessage(S().selectProfilePicture);
      return;
    }

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final failureOrSuccess =
        await _userAccountFacade.updateProfilePictureForUser(
      newProfilePicture: state.profilePicture.getOrCrash(),
      currentProfilePictureUrl: currentPictureUrl,
    );

    failureOrSuccess.fold(
      _emitFailure,
      (success) => emit(state.copyWith(status: FormzStatus.submissionSuccess)),
    );
  }

  Future<void> deleteProfilePicture(String pictureUrl) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final result = await _userAccountFacade.deleteProfilePicture(pictureUrl);

    result.fold(
      _emitFailure,
      (success) => emit(state.copyWith(status: FormzStatus.submissionSuccess)),
    );
  }

  Future<void> pickProfilePicture() async {
    try {
      final result = await pickImage(S().addPhoto);
      if (result == null) return;
      _changeProfilePicture(result);
    } on PlatformException {
      _showErrorMessage(S().allowAccessToFiles);
    }
  }

  void _changeProfilePicture(Uint8List value) {
    emit(state.copyWith(profilePicture: some(value)));
  }

  _emitFailure(UserAccountFailure failure) {
    emit(
      state.copyWith(
        errorMessage: some(failure.message),
        status: FormzStatus.submissionFailure,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }

  _showErrorMessage(String message) {
    emit(state.copyWith(errorMessage: some(message)));
    emit(state.copyWith(errorMessage: none()));
  }
}

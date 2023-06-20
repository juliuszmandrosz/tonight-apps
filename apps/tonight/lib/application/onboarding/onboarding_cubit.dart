import 'package:account_settings/account_settings.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/auth/form_inputs/username.dart';
import 'package:tonight/application/onboarding/form_inputs/birthdate_value_object.dart';
import 'package:tonight/application/onboarding/form_inputs/city_value_object.dart';
import 'package:tonight/application/onboarding/form_inputs/gender_value_object.dart';
import 'package:tonight/application/onboarding/gender.dart';
import 'package:tonight/domain/places/place_entity.dart';
import 'package:translations/translations.dart';

part 'onboarding_cubit.freezed.dart';
part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final UserAccountFacade _userAccountFacade;

  OnboardingCubit(this._userAccountFacade) : super(OnboardingState.initial());

  Future<void> submitOnboarding() async {
    if (!_validateForm()) return;

    emit(state.copyWith(submissionStatus: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _userAccountFacade.submitOnboardingForUser(
      username: state.username.value,
      gender: state.gender.value!.name,
      birthdate: state.birthdate.value!,
      cityId: state.city.value!.id,
      cityName: state.city.value!.name,
      profilePicture: state.userPhoto.fold(() => null, (picture) => picture),
    );

    failureOrSuccess.fold(
      _emitFailure,
      (success) =>
          emit(state.copyWith(submissionStatus: FormzStatus.submissionSuccess)),
    );
  }

  void usernameChanged(String value) {
    final username = Username.dirty(value);
    emit(state.copyWith(username: username));
  }

  void cityChanged(Place value) {
    final city = CityValueObject.dirty(value);
    emit(state.copyWith(city: city));
  }

  void birthdateChanged(DateTime value) {
    final birthdate = BirthdateValueObject.dirty(value);
    emit(state.copyWith(birthdate: birthdate));
  }

  void genderChanged(Gender value) {
    final gender = GenderValueObject.dirty(value);
    emit(state.copyWith(gender: gender));
  }

  Future<void> pickProfilePhoto() async {
    try {
      final result = await pickImage(S().addPhoto);
      if (result == null) return;
      _userPhotoChanged(result);
    } on PlatformException {
      _showErrorMessage(S().allowAccessToFiles);
    }
  }

  deletePhoto() {
    emit(state.copyWith(userPhoto: none()));
  }

  _userPhotoChanged(Uint8List value) {
    emit(state.copyWith(userPhoto: some(value)));
  }

  _validateForm() {
    emit(
      state.copyWith(
        username: Username.dirty(state.username.value),
      ),
    );

    final status = Formz.validate(
      [
        state.username,
        state.city,
        state.birthdate,
        state.gender,
      ],
    );
    emit(state.copyWith(submissionStatus: status));

    return status.isValidated;
  }

  _emitFailure(UserAccountFailure failure) {
    emit(
      state.copyWith(
        errorMessage: some(failure.message),
        submissionStatus: FormzStatus.submissionFailure,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }

  _showErrorMessage(String message) {
    emit(state.copyWith(errorMessage: some(message)));
    emit(state.copyWith(errorMessage: none()));
  }
}

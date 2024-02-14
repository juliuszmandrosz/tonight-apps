import 'dart:typed_data';

import 'package:account_settings/domain/user_account_facade.dart';
import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_entity.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_facade.dart';
import 'package:tonight/domain/challenges/challenge_entity.dart';
import 'package:translations/translations.dart';

part 'photo_preview_cubit.freezed.dart';
part 'photo_preview_state.dart';

class PhotoPreviewCubit extends Cubit<PhotoPreviewState> {
  final ChallengeStoryFacade _challengeStoryFacade;
  final UserAccountFacade _userAccountFacade;

  PhotoPreviewCubit(this._challengeStoryFacade, this._userAccountFacade)
      : super(PhotoPreviewState.initial());

  addStory(
    XFile photo,
    Challenge challenge,
    bool isSelfie,
  ) async {
    emit(state.copyWith(addStoryStatus: CubitStatus.loading));
    final userResult = await _userAccountFacade.getUserAccount().first;
    if (userResult.isLeft()) {
      _showSnackbar(S().serverError);
      emit(state.copyWith(addStoryStatus: CubitStatus.failure));
      return;
    }
    final user = userResult.getRightOrCrash();
    final story = ChallengeStory(
      userId: user.id,
      username: user.username,
      userProfilePhotoUrl: user.profilePictureUrl,
      storyUrl: '',
      isVideo: false,
      challengeId: challenge.id,
      challengeTitle: challenge.title,
      periodNumber: challenge.periodNumber,
      challengeStartDate: challenge.startDate,
      challengeEndDate: challenge.endDate,
    );
    final processedPhoto = await _processPhoto(photo, isSelfie);
    if (processedPhoto.isNone()) {
      emit(state.copyWith(addStoryStatus: CubitStatus.failure));
      _showSnackbar(S().serverError);
      return;
    }
    final result = await _challengeStoryFacade.addStory(
      processedPhoto.getOrCrash(),
      story,
    );
    result.fold(
      (_) {
        emit(state.copyWith(addStoryStatus: CubitStatus.failure));
        _showSnackbar(S().serverError);
      },
      (_) => emit(state.copyWith(addStoryStatus: CubitStatus.success)),
    );
  }

  Future<Option<Uint8List>> _processPhoto(
    XFile photo,
    bool isSelfie,
  ) async {
    final photoBytes = await photo.readAsBytes();
    final compressedPhoto = await compressImage(
      photoBytes,
      quality: 90,
      minHeight: 1829,
      minWidth: 1024,
    );
    if (!isSelfie) {
      return some(compressedPhoto);
    }
    final flippedPhoto = await flipImageHorizontallyAsync(compressedPhoto);
    return flippedPhoto.fold(
      () => none(),
      (photo) => some(photo),
    );
  }

  _showSnackbar(String message) {
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }
}

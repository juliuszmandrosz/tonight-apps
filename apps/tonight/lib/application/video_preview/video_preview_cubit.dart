import 'dart:io';
import 'dart:typed_data';

import 'package:account_settings/domain/user_account_facade.dart';
import 'package:camera/camera.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_entity.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_facade.dart';
import 'package:tonight/domain/challenges/challenge_entity.dart';
import 'package:translations/translations.dart';
import 'package:video_compress/video_compress.dart';

part 'video_preview_cubit.freezed.dart';
part 'video_preview_state.dart';

class VideoPreviewCubit extends Cubit<VideoPreviewState> {
  final ChallengeStoryFacade _challengeStoryFacade;
  final UserAccountFacade _userAccountFacade;

  VideoPreviewCubit(this._challengeStoryFacade, this._userAccountFacade)
      : super(VideoPreviewState.initial());

  addStory(
    XFile video,
    Challenge challenge,
    int durationInMilliseconds,
    bool isSelfie,
  ) async {
    if (state.addStoryStatus.isLoading()) return;
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
      isVideo: true,
      challengeId: challenge.id,
      challengeTitle: challenge.title,
      periodNumber: challenge.periodNumber,
      challengeStartDate: challenge.startDate,
      challengeEndDate: challenge.endDate,
      videoDurationInMilliseconds: durationInMilliseconds,
    );
    final processedVideo = await _processVideo(video, isSelfie);
    if (processedVideo.isNone()) {
      emit(state.copyWith(addStoryStatus: CubitStatus.failure));
      _showSnackbar(S().serverError);
      return;
    }

    final result = await _challengeStoryFacade.addStory(
      processedVideo.getOrCrash(),
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

  Future<Option<Uint8List>> _processVideo(
    XFile video,
    bool isSelfie,
  ) async {
    await VideoCompress.setLogLevel(0);
    final info = await VideoCompress.compressVideo(
      video.path,
      quality: VideoQuality.MediumQuality,
      deleteOrigin: false,
      includeAudio: true,
    );

    if (info == null) {
      return none();
    }

    final bytes = await File(info.path!).readAsBytes();
    return some(bytes);
  }

  _showSnackbar(String message) {
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }
}

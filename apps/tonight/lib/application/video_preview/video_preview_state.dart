part of 'video_preview_cubit.dart';

@freezed
class VideoPreviewState with _$VideoPreviewState {
  const factory VideoPreviewState({
    required CubitStatus addStoryStatus,
    required Option<String> snackbarMessage,
  }) = _VideoPreviewState;


  factory VideoPreviewState.initial() =>
      VideoPreviewState(
        addStoryStatus: CubitStatus.initial,
        snackbarMessage: none(),
      );
}

part of 'photo_preview_cubit.dart';

@freezed
class PhotoPreviewState with _$PhotoPreviewState {
  const factory PhotoPreviewState({
    required CubitStatus addStoryStatus,
    required Option<String> snackbarMessage,
  }) = _PhotoPreviewState;

  factory PhotoPreviewState.initial() => PhotoPreviewState(
        addStoryStatus: CubitStatus.initial,
        snackbarMessage: none(),
      );
}

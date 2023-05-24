part of 'send_time_task_cubit.dart';

@freezed
class SendTimeTaskState with _$SendTimeTaskState {
  const factory SendTimeTaskState({
    required CubitStatus status,
    required Option<String> snackbarMessage,
    required String descriptionPl,
    required String descriptionEn,
    required int durationInMinutes,
  }) = _SendTimeTaskState;

  factory SendTimeTaskState.initial() => SendTimeTaskState(
        status: CubitStatus.initial,
        snackbarMessage: none(),
        descriptionEn: '',
        descriptionPl: '',
        durationInMinutes: 0,
      );
}

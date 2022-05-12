part of 'postpone_event_cubit.dart';

@freezed
class PostponeEventState with _$PostponeEventState {
  const factory PostponeEventState({
    required FormzStatus status,
    required Option<Event> event,
    required Option<String> errorMessage,
    required StartDateTime startDateTime,
    required EndDateTime endDateTime,
  }) = _PostponeEventState;

  factory PostponeEventState.initial() => PostponeEventState(
        status: FormzStatus.pure,
        event: none(),
        errorMessage: none(),
        startDateTime: const StartDateTime.pure(),
        endDateTime: const EndDateTime.pure(),
      );
}

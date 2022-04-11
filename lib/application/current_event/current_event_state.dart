part of 'current_event_cubit.dart';

@freezed
class CurrentEventState with _$CurrentEventState {
  const factory CurrentEventState({
    required Option<Event> currentEvent,
    required CubitStatus status,
  }) = _CurrentEventState;

  factory CurrentEventState.initial() => CurrentEventState(
        currentEvent: none(),
        status: CubitStatus.initial,
      );
}

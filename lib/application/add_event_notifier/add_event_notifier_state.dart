part of 'add_event_notifier_cubit.dart';

@freezed
class AddEventNotifierState with _$AddEventNotifierState {
  const factory AddEventNotifierState({
    required Option<Event> lastAddedEvent,
  }) = _AddEventNotifierState;

  factory AddEventNotifierState.initial() => AddEventNotifierState(
        lastAddedEvent: none(),
      );
}

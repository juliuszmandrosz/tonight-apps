part of 'event_notifier_cubit.dart';

@freezed
class EventNotifierState with _$EventNotifierState {
  const factory EventNotifierState({
    required Option<Event> lastAddedEvent,
    // <old event, edited event>
    required Option<Tuple2<Event, Event>> lastEditedEvent,
    required Option<Event> lastDeletedEvent,
  }) = _EventNotifierState;

  factory EventNotifierState.initial() => EventNotifierState(
        lastAddedEvent: none(),
        lastEditedEvent: none(),
        lastDeletedEvent: none(),
      );
}

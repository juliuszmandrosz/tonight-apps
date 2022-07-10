part of 'event_details_cubit.dart';

@freezed
class EventDetailsState with _$EventDetailsState {
  const factory EventDetailsState({
    required Option<Event> event,
    required CubitStatus status,
  }) = _EventDetailsState;

  factory EventDetailsState.initial() => EventDetailsState(
        event: none(),
        status: CubitStatus.initial,
      );
}

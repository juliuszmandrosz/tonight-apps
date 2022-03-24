part of 'upcoming_live_event_cubit.dart';

@freezed
class UpcomingLiveEventState with _$UpcomingLiveEventState {
  const factory UpcomingLiveEventState({
    required CubitStatus initialStatus,
    required CubitStatus ticketPoolStatus,
    required FormzStatus editEventDetailsStatus,
    required Option<String> errorMessage,
    required Option<EventTickets> eventTickets,
    required Option<Event> event,
    required EventName eventName,
    required Description description,
    required FacebookUrl facebookUrl,
    required DjChannelUrl djChannelUrl,
  }) = _UpcomingLiveEventState;

  factory UpcomingLiveEventState.initial() => UpcomingLiveEventState(
        initialStatus: CubitStatus.initial,
        ticketPoolStatus: CubitStatus.initial,
        editEventDetailsStatus: FormzStatus.pure,
        errorMessage: none(),
        eventTickets: none(),
        event: none(),
        eventName: const EventName.pure(),
        description: const Description.pure(),
        facebookUrl: const FacebookUrl.pure(),
        djChannelUrl: const DjChannelUrl.pure(),
      );
}

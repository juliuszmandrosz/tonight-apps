part of 'upcoming_live_event_cubit.dart';

@freezed
class UpcomingLiveEventState with _$UpcomingLiveEventState {
  const factory UpcomingLiveEventState({
    required CubitStatus initialStatus,
    required CubitStatus ticketPoolStatus,
    required CubitStatus cancelEventStatus,
    required CubitStatus eventCostsStatus,
    required FormzStatus editEventDetailsStatus,
    required Option<String> snackbarMessage,
    required Option<EventTickets> eventTickets,
    required Option<EventCosts> eventCosts,
    required Option<Event> event,
    required EventName eventName,
    required Description description,
    required FacebookUrl facebookUrl,
    required DjChannelUrl djChannelUrl,
  }) = _UpcomingLiveEventState;

  factory UpcomingLiveEventState.initial() => UpcomingLiveEventState(
        initialStatus: CubitStatus.initial,
        ticketPoolStatus: CubitStatus.initial,
        cancelEventStatus: CubitStatus.initial,
        eventCostsStatus: CubitStatus.initial,
        editEventDetailsStatus: FormzStatus.pure,
        snackbarMessage: none(),
        eventTickets: none(),
        eventCosts: none(),
        event: none(),
        eventName: const EventName.pure(),
        description: const Description.pure(),
        facebookUrl: const FacebookUrl.pure(),
        djChannelUrl: const DjChannelUrl.pure(),
      );
}

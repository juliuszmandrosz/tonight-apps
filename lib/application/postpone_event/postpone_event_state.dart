part of 'postpone_event_cubit.dart';

@freezed
class PostponeEventState with _$PostponeEventState {
  const factory PostponeEventState({
    required FormzStatus postponeEventStatus,
    required CubitStatus eventCostsStatus,
    required Option<Event> event,
    required Option<EventCosts> eventCosts,
    required Option<String> errorMessage,
    required StartDateTime startDateTime,
    required EndDateTime endDateTime,
  }) = _PostponeEventState;

  factory PostponeEventState.initial() => PostponeEventState(
        postponeEventStatus: FormzStatus.pure,
        eventCostsStatus: CubitStatus.initial,
        event: none(),
        eventCosts: none(),
        errorMessage: none(),
        startDateTime: const StartDateTime.pure(),
        endDateTime: const EndDateTime.pure(),
      );
}

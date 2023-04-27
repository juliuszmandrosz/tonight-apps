part of 'tonight_events_bloc.dart';

@freezed
class TonightEventsEvent with _$TonightEventsEvent {
  const factory TonightEventsEvent.eventsFetched() = _EventsFetched;

  const factory TonightEventsEvent.nextPageEventsFetched() =
      _NextPageEventsFetched;
}

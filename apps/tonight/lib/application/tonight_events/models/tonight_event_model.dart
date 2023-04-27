import 'package:events/domain/events/event_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/participants/participant_entity.dart';

part 'tonight_event_model.freezed.dart';

@freezed
class TonightEvent with _$TonightEvent {
  const factory TonightEvent({
    required String eventId,
    required String eventName,
    required String clubId,
    required String clubName,
    required DateTime eventStartDateTime,
    required DateTime eventEndDateTime,
    required int minAge,
    required int price,
    required String currency,
    required String eventPhotoUrl,
    required String allowedOutfit,
    required List<String> musicalGenres,
    required Map<String, double> location,
    required Map<String, String> urlLinks,
    required bool isConcert,
    required List<Participant> participants,
    String? artistName,
    String? description,
  }) = _TonightEvent;

  factory TonightEvent.fromDomain({
    required Event event,
    required List<Participant> participants,
  }) =>
      TonightEvent(
        eventId: event.id,
        eventName: event.eventName,
        clubId: event.clubId,
        clubName: event.clubName,
        eventStartDateTime: event.eventStartDateTime,
        eventEndDateTime: event.eventEndDateTime,
        minAge: event.minAge,
        price: event.price,
        currency: event.currency,
        eventPhotoUrl: event.eventPhotoUrl,
        allowedOutfit: event.allowedOutfit,
        musicalGenres: event.musicalGenres,
        location: event.location,
        urlLinks: event.urlLinks,
        isConcert: event.isConcert,
        artistName: event.artistName,
        description: event.description,
        participants: participants,
      );
}

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
}

import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/tonight_events/models/event_participant_model.dart';
import 'package:tonight/application/tonight_events/models/event_voucher_model.dart';
import 'package:tonight/domain/participants/participant_entity.dart';
import 'package:tonight/domain/participants/participant_failure.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_entity.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_failure.dart';

part 'tonight_event_model.freezed.dart';

@freezed
class TonightEvent with _$TonightEvent {
  const TonightEvent._();

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
    required Option<List<EventParticipant>> firstParticipants,
    required int totalParticipants,
    required Option<EventVoucher> voucher,
    String? locationString,
    String? clubPhotoUrl,
    String? artistName,
    String? description,
  }) = _TonightEvent;

  factory TonightEvent.fromDomain({
    required Event event,
    required Either<ParticipantFailure, Tuple2<List<Participant>, int>>
        participantsResult,
    required Either<TonightVoucherFailure, Option<TonightVoucher>>
        tonightVoucherResult,
    required String currentUserId,
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
        locationString: event.locationString,
        clubPhotoUrl: event.clubPhotoUrl,
        totalParticipants: participantsResult.fold(
          (_) => 0,
          (participants) => participants.value2,
        ),
        firstParticipants: participantsResult.fold(
          (_) => none(),
          (participants) => some(
            [...participants.value1.map((p) => EventParticipant.fromDomain(p))],
          ),
        ),
        voucher: tonightVoucherResult.fold(
          (_) => none(),
          (voucherOption) => voucherOption.fold(
            () => none(),
            (voucher) => some(
              EventVoucher.fromDomain(
                voucher: voucher,
                currentUserId: currentUserId,
              ),
            ),
          ),
        ),
      );

  Event toDomain() => Event(
        id: eventId,
        clubId: clubId,
        eventName: eventName,
        clubName: clubName,
        eventStartDateTime: eventStartDateTime,
        eventEndDateTime: eventEndDateTime,
        minAge: minAge,
        price: price,
        currency: currency,
        eventPhotoUrl: eventPhotoUrl,
        allowedOutfit: allowedOutfit,
        musicalGenres: musicalGenres,
        location: location,
        artistName: artistName,
        description: description,
        urlLinks: urlLinks,
        isConcert: isConcert,
        originalStartDateTime: eventStartDateTime,
        attending: totalParticipants,
        // TODO - change event entity to have optional city id
        cityId: '',
        clubPhotoUrl: clubPhotoUrl,
        locationString: locationString,
      );
}

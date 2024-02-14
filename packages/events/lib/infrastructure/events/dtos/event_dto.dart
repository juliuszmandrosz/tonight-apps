import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/infrastructure/infrastructure.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_dto.freezed.dart';
part 'event_dto.g.dart';

@freezed
class EventDto with _$EventDto {
  const EventDto._();

  @JsonSerializable()
  const factory EventDto({
    @JsonKey(includeToJson: false, includeFromJson: false) String? id,
    required String clubId,
    required String eventName,
    required String clubName,
    @TimestampJsonConverter() required DateTime eventStartDateTime,
    @TimestampJsonConverter() required DateTime eventEndDateTime,
    @TimestampJsonConverter() required DateTime originalStartDateTime,
    required int minAge,
    required int price,
    required String currency,
    required String eventPhotoUrl,
    required String allowedOutfit,
    required List<String> musicalGenres,
    String? description,
    String? artistName,
    @LocationConverter() required Map<String, double> location,
    required String cityId,
    @Default({}) Map<String, String> urlLinks,
    @Default(false) bool isConcert,
    @Default(0) int attending,
    @Default(false) bool isCanceled,
    @Default(false) bool isBeingPostponed,
    @Default(false) bool areTicketsAvailableInApp,
    @Default(false) bool isTonightEvent,
    @Default('') String entryFee,
    @Default('') String priceList,
    String? locationString,
    String? clubPhotoUrl,
    String? externalTicketsUrl,
  }) = _EventDto;

  factory EventDto.fromDomain(Event event) {
    return EventDto(
      id: event.id,
      clubId: event.clubId,
      price: event.price,
      currency: event.currency,
      eventName: event.eventName,
      eventStartDateTime: event.eventStartDateTime,
      eventEndDateTime: event.eventEndDateTime,
      originalStartDateTime: event.originalStartDateTime,
      eventPhotoUrl: event.eventPhotoUrl,
      clubName: event.clubName,
      allowedOutfit: event.allowedOutfit,
      attending: event.attending,
      minAge: event.minAge,
      musicalGenres: event.musicalGenres,
      urlLinks: event.urlLinks,
      location: event.location,
      cityId: event.cityId,
      artistName: event.artistName,
      description: event.description,
      isConcert: event.isConcert,
      isCanceled: event.isCanceled,
      isBeingPostponed: event.isBeingPostponed,
      entryFee: event.entryFee,
      priceList: event.priceList,
      clubPhotoUrl: event.clubPhotoUrl,
      locationString: event.locationString,
      externalTicketsUrl: event.externalTicketsUrl,
      areTicketsAvailableInApp: event.areTicketsAvailableInApp,
      isTonightEvent: event.isTonightEvent,
    );
  }

  factory EventDto.fromJson(Map<String, dynamic> json) =>
      _$EventDtoFromJson(json);

  factory EventDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return EventDto.fromJson(documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(
      id: documentSnapshot.id,
    );
  }

  factory EventDto.fromApi(Map<String, dynamic> documentSnapshot) {
    return EventDto.fromJson(documentSnapshot).copyWith(
      id: documentSnapshot['id'],
    );
  }

  Event toDomain() {
    return Event(
      id: id,
      price: price,
      currency: currency,
      eventName: eventName,
      eventStartDateTime: eventStartDateTime,
      eventEndDateTime: eventEndDateTime,
      originalStartDateTime: originalStartDateTime,
      eventPhotoUrl: eventPhotoUrl,
      clubName: clubName,
      allowedOutfit: allowedOutfit,
      attending: attending,
      minAge: minAge,
      musicalGenres: musicalGenres,
      location: location,
      cityId: cityId,
      clubId: clubId,
      urlLinks: urlLinks,
      isConcert: isConcert,
      description: description,
      artistName: artistName,
      isCanceled: isCanceled,
      isBeingPostponed: isBeingPostponed,
      entryFee: entryFee,
      priceList: priceList,
      clubPhotoUrl: clubPhotoUrl,
      locationString: locationString,
      externalTicketsUrl: externalTicketsUrl,
      areTicketsAvailableInApp: areTicketsAvailableInApp,
      isTonightEvent: isTonightEvent,
    );
  }
}

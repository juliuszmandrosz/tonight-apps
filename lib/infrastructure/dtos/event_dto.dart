import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/event_entity.dart';

part 'event_dto.freezed.dart';

part 'event_dto.g.dart';

@freezed
class EventDto with _$EventDto {
  const EventDto._();

  @JsonSerializable()
  const factory EventDto({
    @JsonKey(ignore: true) String? id,
    required String clubId,
    required String eventName,
    required String clubName,
    @TimestampJsonConverter() required DateTime eventDateTime,
    required int attending,
    required int minAge,
    required int price,
    required String allowedOutfit,
    required List<String> musicalGenres,
    String? description,
    String? artistName,
    // ignore: invalid_annotation_target
    @JsonKey(name: '_geoloc') required Map<String, double> location,
    required String cityId,
    @Default([]) List<String> photos,
    @Default({}) Map<String, String> urlLinks,
    @Default(false) bool isConcert,
  }) = _EventDto;

  factory EventDto.fromDomain(Event event) {
    return EventDto(
      id: event.id,
      clubId: event.clubId,
      price: event.price,
      eventName: event.eventName,
      eventDateTime: event.eventDateTime,
      clubName: event.clubName,
      allowedOutfit: event.allowedOutfit,
      attending: event.attending,
      minAge: event.minAge,
      musicalGenres: event.musicalGenres,
      photos: event.photos,
      urlLinks: event.urlLinks,
      location: event.location,
      cityId: event.cityId,
      artistName: event.artistName,
      description: event.description,
      isConcert: event.isConcert,
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

  factory EventDto.fromAlgolia(AlgoliaObjectSnapshot documentSnapshot) {
    return EventDto.fromJson(documentSnapshot.data).copyWith(
      id: documentSnapshot.objectID,
    );
  }

  Event toDomain() {
    return Event(
      id: id,
      price: price,
      eventName: eventName,
      eventDateTime: eventDateTime,
      clubName: clubName,
      allowedOutfit: allowedOutfit,
      attending: attending,
      minAge: minAge,
      musicalGenres: musicalGenres,
      location: location,
      cityId: cityId,
      clubId: clubId,
      photos: photos,
      urlLinks: urlLinks,
      isConcert: isConcert,
      description: description,
      artistName: artistName,
    );
  }
}

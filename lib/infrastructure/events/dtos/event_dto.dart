import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/core/extensions/date_formatters.dart';
import 'package:raver/domain/events/event_entity.dart';
import 'package:raver/infrastructure/core/firebase_converters.dart';

part 'event_dto.freezed.dart';
part 'event_dto.g.dart';

@freezed
class EventDto with _$EventDto {
  const EventDto._();

  // https://github.com/rrousselGit/freezed/issues/527
  // ignore: invalid_annotation_target
  @JsonSerializable()
  const factory EventDto({
    @JsonKey(ignore: true) String? id,
    required String clubId,
    required String eventName,
    required String clubName,
    @JsonKey(fromJson: dateTimeFromTimestamp, toJson: timestampFromDateTime)
        required DateTime eventDateTime,
    required int attending,
    required int minAge,
    required int price,
    required List<String> allowedOutfits,
    required List<String> musicalGenres,
    String? description,
    String? artistName,
    required Map<String, double> location,
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
      eventDateTime: event.eventDateTime.formatDateFromDomain(),
      clubName: event.clubName,
      allowedOutfits: event.allowedOutfits,
      attending: event.attending,
      minAge: event.minAge,
      musicalGenres: event.musicalGenres,
      photos: event.photos,
      urlLinks: event.urlLinks,
      location: event.location,
      artistName: event.artistName,
      description: event.description,
      isConcert: event.isConcert,
    );
  }

  factory EventDto.fromJson(Map<String, dynamic> json) =>
      _$EventDtoFromJson(json);

  factory EventDto.fromFirebase(
      DocumentSnapshot documentSnapshot) {
    return EventDto.fromJson(documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(
      id: documentSnapshot.id,
    );
  }

  factory EventDto.fromAlgolia(
    AlgoliaObjectSnapshot documentSnapshot) {
    return EventDto.fromJson(documentSnapshot.data)
        .copyWith(
      id: documentSnapshot.objectID,
    );
  }

  Event toDomain() {
    return Event(
      id: id,
      price: price,
      eventName: eventName,
      eventDateTime: eventDateTime.formatDateToDomain(),
      clubName: clubName,
      allowedOutfits: allowedOutfits,
      attending: attending,
      minAge: minAge,
      musicalGenres: musicalGenres,
      location: location,
      clubId: clubId,
      photos: photos,
      urlLinks: urlLinks,
      isConcert: isConcert,
      description: description,
      artistName: artistName,
    );
  }
}

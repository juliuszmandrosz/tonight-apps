import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';

part 'wall_photo_dto.freezed.dart';
part 'wall_photo_dto.g.dart';

@freezed
class WallPhotoDto with _$WallPhotoDto {
  const WallPhotoDto._();

  @JsonSerializable()
  const factory WallPhotoDto({
    @JsonKey(ignore: true) String? id,
    required String photoUrl,
    required String clubId,
    required String clubName,
    required String eventId,
    required String eventName,
    required String userId,
    required String username,
    @TimestampJsonConverter() required DateTime eventEndDateTime,
    @TimestampJsonConverter() required DateTime createdAt,
    String? userProfilePhotoUrl,
  }) = _WallPhotoDto;

  factory WallPhotoDto.fromDomain(WallPhoto wallPhoto) {
    return WallPhotoDto(
      id: wallPhoto.id,
      photoUrl: wallPhoto.photoUrl,
      clubId: wallPhoto.clubId,
      clubName: wallPhoto.clubName,
      username: wallPhoto.username,
      userId: wallPhoto.userId,
      eventId: wallPhoto.eventId,
      eventName: wallPhoto.eventName,
      eventEndDateTime: wallPhoto.eventEndDateTime,
      createdAt: wallPhoto.createdAt,
      userProfilePhotoUrl: wallPhoto.userProfilePhotoUrl,
    );
  }

  factory WallPhotoDto.fromJson(Map<String, dynamic> json) =>
      _$WallPhotoDtoFromJson(json);

  factory WallPhotoDto.fromApi(Map<String, dynamic> documentSnapshot) {
    return WallPhotoDto.fromJson(documentSnapshot).copyWith(
      id: documentSnapshot['id'],
    );
  }

  factory WallPhotoDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return WallPhotoDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  WallPhoto toDomain() {
    return WallPhoto(
      id: id,
      photoUrl: photoUrl,
      clubId: clubId,
      clubName: clubName,
      eventId: eventId,
      eventName: eventName,
      userId: userId,
      username: username,
      eventEndDateTime: eventEndDateTime,
      createdAt: createdAt,
      userProfilePhotoUrl: userProfilePhotoUrl,
    );
  }
}

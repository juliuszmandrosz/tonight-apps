import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
    required String venueId,
    required String venueName,
    @LatLngConverter() required LatLng venueLocation,
    required String userId,
    required String username,
    required String eventId,
    required String eventName,
    @TimestampJsonConverter() required DateTime eventEndDateTime,
    @TimestampJsonConverter() required DateTime createdAt,
    String? userProfilePhotoUrl,
    String? timeTaskId,
    @NullableLatLngConverter() LatLng? photoLocation,
    @Default(false) bool isVerified,
  }) = _WallPhotoDto;

  factory WallPhotoDto.fromDomain(WallPhoto wallPhoto) {
    return WallPhotoDto(
      id: wallPhoto.id,
      photoUrl: wallPhoto.photoUrl,
      venueId: wallPhoto.venueId,
      venueName: wallPhoto.venueName,
      venueLocation: wallPhoto.venueLocation,
      username: wallPhoto.username,
      userId: wallPhoto.userId,
      eventEndDateTime: wallPhoto.eventEndDateTime,
      createdAt: wallPhoto.createdAt,
      userProfilePhotoUrl: wallPhoto.userProfilePhotoUrl,
      isVerified: wallPhoto.isVerified,
      photoLocation: wallPhoto.photoLocation,
      eventId: wallPhoto.eventId,
      timeTaskId: wallPhoto.timeTaskId,
      eventName: wallPhoto.eventName,
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
      venueId: venueId,
      venueName: venueName,
      venueLocation: venueLocation,
      eventId: eventId,
      eventName: eventName,
      userId: userId,
      username: username,
      eventEndDateTime: eventEndDateTime,
      createdAt: createdAt,
      userProfilePhotoUrl: userProfilePhotoUrl,
      isVerified: isVerified,
      photoLocation: photoLocation,
      timeTaskId: timeTaskId,
    );
  }
}

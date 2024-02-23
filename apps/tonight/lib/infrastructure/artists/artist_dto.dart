import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/domain/social_media/social_media_entity.dart';
import 'package:common/infrastructure/json_converters/firebase_timestamp_list_json_converter.dart';
import 'package:common/infrastructure/json_converters/social_media_json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/artists/artist_entity.dart';

part 'artist_dto.freezed.dart';
part 'artist_dto.g.dart';

@freezed
class ArtistDto with _$ArtistDto {
  const ArtistDto._();

  const factory ArtistDto({
    @JsonKey(includeToJson: false, includeFromJson: false)
        String? id,
    required String artistName,
    required String artistPhotoUrl,
    required String cityId,
    required String cityName,
    required List<String> musicalGenres,
    @SocialMediaJsonConverter()
    @Default([])
        List<SocialMedia> socialMedia,
    @FirebaseTimestampListJsonConverter()
    @Default([])
        List<DateTime> bookedDates,
    @Default([])
        List<String> collectiveIds,
    @Default('')
        String bio,
  }) = _ArtistDto;

  factory ArtistDto.fromJson(Map<String, dynamic> json) =>
      _$ArtistDtoFromJson(json);

  factory ArtistDto.fromFirebase(DocumentSnapshot doc) {
    return ArtistDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  factory ArtistDto.fromApi(Map<String, dynamic> doc) {
    return ArtistDto.fromJson(doc).copyWith(
      id: doc['id'],
    );
  }

  factory ArtistDto.fromDomain(Artist artist) {
    return ArtistDto(
      id: artist.id,
      artistName: artist.artistName,
      artistPhotoUrl: artist.artistPhotoUrl,
      cityId: artist.cityId,
      cityName: artist.cityName,
      musicalGenres: artist.musicalGenres,
      socialMedia: artist.socialMedia,
      bookedDates: artist.bookedDates,
      collectiveIds: artist.collectiveIds,
      bio: artist.bio,
    );
  }

  Artist toDomain() {
    return Artist(
      id: id,
      artistName: artistName,
      artistPhotoUrl: artistPhotoUrl,
      cityId: cityId,
      cityName: cityName,
      musicalGenres: musicalGenres,
      socialMedia: socialMedia,
      bookedDates: bookedDates,
      collectiveIds: collectiveIds,
      bio: bio,
    );
  }
}

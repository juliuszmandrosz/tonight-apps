import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';

part 'collective_dto.freezed.dart';
part 'collective_dto.g.dart';

@freezed
class CollectiveDto with _$CollectiveDto {
  const CollectiveDto._();

  @JsonSerializable()
  const factory CollectiveDto({
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
    required String collectiveName,
    required String collectivePhotoUrl,
    required int reviewCount,
    required double reviewAvg,
    @CityJsonConverter() @Default([]) List<City> cities,
    @SocialMediaJsonConverter() @Default([]) List<SocialMedia> socialMedia,
    @Default('') String bio,
    @Default([]) List<String> residentIds,
    @Default([]) List<String> musicalGenres,
  }) = _CollectiveDto;

  factory CollectiveDto.fromJson(Map<String, dynamic> json) =>
      _$CollectiveDtoFromJson(json);

  factory CollectiveDto.fromFirebase(DocumentSnapshot doc) =>
      CollectiveDto.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);

  factory CollectiveDto.fromDomain(Collective collective) {
    return CollectiveDto(
      id: collective.id,
      collectiveName: collective.collectiveName,
      collectivePhotoUrl: collective.collectivePhotoUrl,
      reviewAvg: collective.reviewAvg,
      reviewCount: collective.reviewCount,
      cities: collective.cities,
      socialMedia: collective.socialMedia,
      residentIds: collective.residentIds,
      bio: collective.bio,
      musicalGenres: collective.musicalGenres,
    );
  }

  Collective toDomain() {
    return Collective(
      id: id,
      collectiveName: collectiveName,
      collectivePhotoUrl: collectivePhotoUrl,
      reviewAvg: reviewAvg,
      cities: cities,
      socialMedia: socialMedia,
      reviewCount: reviewCount,
      bio: bio,
      residentIds: residentIds,
      musicalGenres: musicalGenres,
    );
  }
}

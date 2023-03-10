import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_clubs/domain/domain.dart';
import 'package:raver_common/infrastructure/infrastructure.dart';

part 'club_dto.freezed.dart';

part 'club_dto.g.dart';

@freezed
class ClubDto with _$ClubDto {
  const ClubDto._();

  @JsonSerializable()
  const factory ClubDto({
    @JsonKey(ignore: true) String? id,
    required String clubName,
    required String clubImageUrl,
    @Default(0) int reviewCount,
    @Default(0) double reviewAvg,
    required String locationString,
    required String cityId,
    required String acceptedCurrency,
    required String phoneNumber,
    @LocationConverter() required Map<String, double> location,
    @Default({}) Map<String, String> socialMedia,
    String? aboutUs,
  }) = _ClubDto;

  factory ClubDto.fromDomain(Club club) {
    return ClubDto(
      id: club.id,
      clubName: club.clubName,
      clubImageUrl: club.clubImageUrl,
      reviewCount: club.reviewCount,
      reviewAvg: club.reviewAvg,
      location: club.location,
      locationString: club.locationString,
      cityId: club.cityId,
      acceptedCurrency: club.acceptedCurrency,
      phoneNumber: club.phoneNumber,
      socialMedia: club.socialMedia,
      aboutUs: club.aboutUs,
    );
  }

  factory ClubDto.fromJson(Map<String, dynamic> json) =>
      _$ClubDtoFromJson(json);

  factory ClubDto.fromApi(Map<String, dynamic> documentSnapshot) {
    return ClubDto.fromJson(documentSnapshot).copyWith(
      id: documentSnapshot['id'],
    );
  }

  factory ClubDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return ClubDto.fromJson(documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  Club toDomain() {
    return Club(
      id: id,
      clubName: clubName,
      clubImageUrl: clubImageUrl,
      reviewCount: reviewCount,
      reviewAvg: reviewAvg,
      locationString: locationString,
      location: location,
      cityId: cityId,
      acceptedCurrency: acceptedCurrency,
      aboutUs: aboutUs,
      phoneNumber: phoneNumber,
      socialMedia: socialMedia,
    );
  }
}

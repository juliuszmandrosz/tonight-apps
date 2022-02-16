import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/infrastructure/core/json_converters/geopoint_json_converter.dart';

import 'club_review_dto.dart';

part 'club_dto.freezed.dart';

part 'club_dto.g.dart';

@freezed
class ClubDto with _$ClubDto {
  const ClubDto._();

  const factory ClubDto({
    required String id,
    required String clubName,
    required String clubImageUrl,
    required int reviewCount,
    required double reviewAvg,
    required String locationString,
    @GeoPointConverter() required GeoPoint location,
    required String phoneNumber,
    required String aboutUs,
    @Default({}) Map<String, String> socialMedia,
    @Default([]) List<ClubReviewDto> reviews,
  }) = _ClubDto;

  factory ClubDto.fromDomain(Club club) {
    return ClubDto(
      id: club.id,
      clubName: club.clubName,
      clubImageUrl: club.clubImageUrl,
      reviewCount: club.reviewCount,
      reviewAvg: club.reviewAvg,
      locationString: club.locationString,
      location: club.location,
      aboutUs: club.aboutUs,
      phoneNumber: club.phoneNumber,
      socialMedia: club.socialMedia,
      reviews: List.generate(club.reviews.length,
          (index) => ClubReviewDto.fromDomain(club.reviews[index])),
    );
  }

  factory ClubDto.fromJson(Map<String, dynamic> json) =>
      _$ClubDtoFromJson(json);

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
        aboutUs: aboutUs,
        phoneNumber: phoneNumber,
        socialMedia: socialMedia,
        reviews: reviews.map((review) => review.toDomain()).toList());
  }
}

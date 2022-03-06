import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/clubs/club_entity.dart';

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
    @Default(0) int reviewCount,
    @Default(0) double reviewAvg,
    required String locationString,
    required String phoneNumber,
    required Map<String, double> location,
    String? aboutUs,
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
      location: club.location,
      locationString: club.locationString,
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

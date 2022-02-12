import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/clubs/club_overview/club_overview_entity.dart';

part 'club_overview_dto.freezed.dart';
part 'club_overview_dto.g.dart';

@freezed
abstract class ClubOverviewDto implements _$ClubOverviewDto {
  const ClubOverviewDto._();

  const factory ClubOverviewDto(
      {required String clubName,
      required String clubImageUrl,
      required int reviewCount,
      required double reviewAvg,
      required String addressString}) = _ClubOverviewDto;

  factory ClubOverviewDto.fromDomain(ClubOverview club) {
    return ClubOverviewDto(
        clubName: club.clubName,
        clubImageUrl: club.clubImageUrl,
        reviewCount: club.reviewCount,
        reviewAvg: club.reviewAvg,
        addressString: club.addressString);
  }

  factory ClubOverviewDto.fromJson(Map<String, dynamic> json) =>
      _$ClubOverviewDtoFromJson(json);

  factory ClubOverviewDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return ClubOverviewDto.fromJson(
        documentSnapshot.data() as Map<String, dynamic>);
  }

  ClubOverview toDomain() {
    return ClubOverview(
      clubName: clubName,
      clubImageUrl: clubImageUrl,
      reviewCount: reviewCount,
      reviewAvg: reviewAvg,
      addressString: addressString,
    );
  }
}

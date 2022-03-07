import 'package:equatable/equatable.dart';
import 'package:raver/domain/clubs/club_review_entity.dart';

class Club extends Equatable {
  final String id;
  final String clubName;
  final String clubImageUrl;
  final int reviewCount;
  final double reviewAvg;
  final String locationString;
  final String? aboutUs;
  final String phoneNumber;
  final Map<String, double> location;
  final Map<String, String> socialMedia;
  final List<ClubReview> reviews;

  const Club(
      {required this.id,
      required this.clubName,
      required this.clubImageUrl,
      required this.reviewCount,
      required this.reviewAvg,
      required this.location,
      required this.locationString,
      required this.aboutUs,
      required this.phoneNumber,
      required this.socialMedia,
      required this.reviews});

  double getLatitude() {
    return location['latitude']!;
  }

  double getLongitude() {
    return location['longitude']!;
  }

  @override
  List<Object?> get props => [
        id,
        clubName,
        clubImageUrl,
        reviewCount,
        reviewAvg,
        location,
        locationString,
        aboutUs,
        phoneNumber,
        socialMedia,
        reviews
      ];
}

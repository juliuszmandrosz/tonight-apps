import 'package:common/common.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Club extends Equatable {
  final String id;
  final String clubName;
  final String clubImageUrl;
  final int reviewCount;
  final double reviewAvg;
  final String locationString;
  final String cityId;
  final String acceptedCurrency;
  final Map<String, double> location;
  final Map<String, String> socialMedia;
  final String? aboutUs;
  final String? phoneNumber;

  Club({
    String? id,
    required this.clubName,
    required this.clubImageUrl,
    required this.reviewCount,
    required this.reviewAvg,
    required this.location,
    required this.locationString,
    required this.cityId,
    required this.acceptedCurrency,
    required this.socialMedia,
    required this.phoneNumber,
    required this.aboutUs,
  }) : id = id ?? const Uuid().v1();

  double getLatitude() {
    return location[latitude]!;
  }

  double getLongitude() {
    return location[longitude]!;
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
        cityId,
        acceptedCurrency,
        socialMedia,
        aboutUs,
        phoneNumber,
      ];
}

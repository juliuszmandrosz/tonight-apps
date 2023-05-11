import 'package:common/domain/social_media/social_media_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';

class Festival extends Equatable {
  final String id;
  final String festivalName;
  final DateTime startDateTime;
  final DateTime endDateTime;
  final int minAge;
  final String festivalPhotoUrl;
  final LatLng location;
  final String locationString;
  final String cityId;
  final int attending;
  final bool isCanceled;
  final List<SocialMedia> socialMedia;
  final double reviewAvg;
  final int reviewCount;
  final String? description;
  final String? ticketsUrl;

  @override
  List<Object?> get props => [
        id,
        festivalName,
        startDateTime,
        endDateTime,
        minAge,
        festivalPhotoUrl,
        location,
        locationString,
        cityId,
        attending,
        isCanceled,
        socialMedia,
        description,
        ticketsUrl,
        reviewAvg,
        reviewCount,
      ];

  Festival({
    String? id,
    required this.festivalName,
    required this.startDateTime,
    required this.endDateTime,
    required this.minAge,
    required this.festivalPhotoUrl,
    required this.location,
    required this.locationString,
    required this.cityId,
    required this.socialMedia,
    this.description,
    this.ticketsUrl,
    this.attending = 0,
    this.reviewAvg = 0,
    this.reviewCount = 0,
    this.isCanceled = false,
  }) : id = id ?? const Uuid().v1();

  Festival copyWith({
    String? festivalName,
    DateTime? startDateTime,
    DateTime? endDateTime,
    int? minAge,
    String? festivalPhotoUrl,
    LatLng? location,
    String? locationString,
    String? cityId,
    List<SocialMedia>? socialMedia,
    Option<String>? description,
    Option<String>? ticketsUrl,
    int? attending,
    bool? isCanceled,
    double? reviewAvg,
    int? reviewCount,
  }) {
    return Festival(
      id: id,
      festivalName: festivalName ?? this.festivalName,
      startDateTime: startDateTime ?? this.startDateTime,
      endDateTime: endDateTime ?? this.endDateTime,
      minAge: minAge ?? this.minAge,
      festivalPhotoUrl: festivalPhotoUrl ?? this.festivalPhotoUrl,
      location: location ?? this.location,
      locationString: locationString ?? this.locationString,
      cityId: cityId ?? this.cityId,
      socialMedia: socialMedia ?? this.socialMedia,
      description: description != null
          ? description.fold(
              () => null,
              (description) => description,
            )
          : this.description,
      ticketsUrl: ticketsUrl != null
          ? ticketsUrl.fold(
              () => null,
              (ticketsUrl) => ticketsUrl,
            )
          : this.ticketsUrl,
      attending: attending ?? this.attending,
      isCanceled: isCanceled ?? this.isCanceled,
      reviewAvg: reviewAvg ?? this.reviewAvg,
      reviewCount: reviewCount ?? this.reviewCount,
    );
  }
}

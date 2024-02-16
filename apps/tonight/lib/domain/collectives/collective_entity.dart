import 'package:common/domain/available_filters/entities/city_entity.dart';
import 'package:common/domain/social_media/social_media_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Collective extends Equatable {
  final String id;
  final String collectiveName;
  final String collectivePhotoUrl;
  final int reviewCount;
  final double reviewAvg;
  final List<City> cities;
  final List<SocialMedia> socialMedia;
  final String bio;
  final List<String> residentIds;
  final List<String> musicalGenres;

  Collective({
    String? id,
    required this.collectiveName,
    required this.collectivePhotoUrl,
    required this.reviewCount,
    required this.reviewAvg,
    required this.socialMedia,
    required this.cities,
    this.bio = '',
    this.residentIds = const [],
    this.musicalGenres = const [],
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        collectiveName,
        collectivePhotoUrl,
        reviewCount,
        reviewAvg,
        cities,
        socialMedia,
        bio,
        residentIds,
        musicalGenres,
      ];

  Collective copyWith({
    String? collectiveName,
    String? collectivePhotoUrl,
    int? reviewCount,
    double? reviewAvg,
    List<SocialMedia>? socialMedia,
    String? bio,
    List<String>? residentIds,
    List<City>? cities,
    List<String>? musicalGenres,
  }) {
    return Collective(
      id: id,
      collectiveName: collectiveName ?? this.collectiveName,
      collectivePhotoUrl: collectivePhotoUrl ?? this.collectivePhotoUrl,
      reviewCount: reviewCount ?? this.reviewCount,
      reviewAvg: reviewAvg ?? this.reviewAvg,
      socialMedia: socialMedia ?? this.socialMedia,
      bio: bio ?? this.bio,
      residentIds: residentIds ?? this.residentIds,
      cities: cities ?? this.cities,
      musicalGenres: musicalGenres ?? this.musicalGenres,
    );
  }
}

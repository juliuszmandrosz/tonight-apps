import 'package:common/domain/social_media/social_media_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Artist extends Equatable {
  final String id;
  final String artistName;
  final String artistPhotoUrl;
  final String cityId;
  final String cityName;
  final List<String> musicalGenres;
  final List<SocialMedia> socialMedia;
  final String bio;
  final List<DateTime> bookedDates;
  final List<String> collectiveIds;

  Artist({
    String? id,
    required this.artistName,
    required this.artistPhotoUrl,
    required this.cityId,
    required this.cityName,
    required this.musicalGenres,
    required this.socialMedia,
    this.bio = '',
    this.collectiveIds = const [],
    this.bookedDates = const [],
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        artistName,
        cityId,
        cityName,
        artistPhotoUrl,
        musicalGenres,
        socialMedia,
        collectiveIds,
        bio,
      ];

  Artist copyWith({
    String? artistName,
    String? artistPhotoUrl,
    String? cityId,
    String? cityName,
    List<String>? musicalGenres,
    String? bio,
    List<SocialMedia>? socialMedia,
    List<String>? collectiveIds,
  }) {
    return Artist(
      id: id,
      artistName: artistName ?? this.artistName,
      cityId: cityId ?? this.cityId,
      cityName: cityName ?? this.cityName,
      artistPhotoUrl: artistPhotoUrl ?? this.artistPhotoUrl,
      musicalGenres: musicalGenres ?? this.musicalGenres,
      bio: bio ?? this.bio,
      socialMedia: socialMedia ?? this.socialMedia,
      collectiveIds: collectiveIds ?? this.collectiveIds,
    );
  }
}

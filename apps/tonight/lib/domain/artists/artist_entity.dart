import 'package:common/domain/social_media/social_media_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Artist extends Equatable {
  final String id;
  final String artistName;
  final String artistPhotoUrl;
  final String musicalGenre;
  final List<SocialMedia> socialMedia;
  final String? artistDescription;

  Artist({
    String? id,
    required this.artistName,
    required this.artistPhotoUrl,
    required this.musicalGenre,
    required this.socialMedia,
    required this.artistDescription,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props =>
      [
        id,
        artistName,
        artistPhotoUrl,
        musicalGenre,
        socialMedia,
        artistDescription,
      ];

  Artist copyWith({
    String? artistName,
    String? artistPhotoUrl,
    String? musicalGenre,
    List<SocialMedia>? socialMedia,
    Option<String>? artistDescription,
  }) {
    return Artist(
      id: id,
      artistName: artistName ?? this.artistName,
      artistPhotoUrl: artistPhotoUrl ?? this.artistPhotoUrl,
      musicalGenre: musicalGenre ?? this.musicalGenre,
      socialMedia: socialMedia ?? this.socialMedia,
      artistDescription:
      artistDescription != null
          ? artistDescription.fold(
            () => null,
            (description) => description,
      )
          : this.artistDescription,
    );
  }
}

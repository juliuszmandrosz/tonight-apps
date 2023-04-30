import 'package:clubs/clubs.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class UserDetails extends Equatable {
  final String userId;
  final String username;
  final List<Club> favoriteClubs;
  final int totalPhotos;
  final String? profilePictureUrl;

  const UserDetails({
    required this.userId,
    required this.username,
    required this.favoriteClubs,
    required this.totalPhotos,
    this.profilePictureUrl,
  });

  @override
  List<Object?> get props => [
        userId,
        username,
        profilePictureUrl,
        totalPhotos,
        favoriteClubs,
      ];

  UserDetails copyWith({
    String? username,
    List<Club>? favoriteClubs,
    int? totalPhotos,
    Option<String>? profilePictureUrl,
  }) {
    return UserDetails(
      userId: userId,
      username: username ?? this.username,
      favoriteClubs: favoriteClubs ?? this.favoriteClubs,
      totalPhotos: totalPhotos ?? this.totalPhotos,
      profilePictureUrl: profilePictureUrl != null
          ? profilePictureUrl.fold(
              () => null,
              (url) => url,
            )
          : this.profilePictureUrl,
    );
  }
}

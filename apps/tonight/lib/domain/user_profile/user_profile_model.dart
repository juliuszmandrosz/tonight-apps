import 'package:equatable/equatable.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';

class UserProfile extends Equatable {
  final String userId;
  final String email;
  final String username;
  final String profilePictureUrl;
  final int favoriteClubsCount;
  final int raverCoins;
  final List<WallPhoto> userPhotos;

  const UserProfile({
    required this.userId,
    required this.email,
    this.profilePictureUrl = '',
    this.username = '',
    this.favoriteClubsCount = 0,
    this.raverCoins = 0,
    this.userPhotos = const [],
  });

  @override
  List<Object?> get props => [
        userId,
        email,
        username,
        profilePictureUrl,
        favoriteClubsCount,
        raverCoins,
        userPhotos,
      ];

  UserProfile copyWith({
    String? email,
    String? username,
    String? profilePictureUrl,
    int? favoriteClubsCount,
    int? raverCoins,
    List<WallPhoto>? userPhotos,
  }) {
    return UserProfile(
      userId: userId,
      email: email ?? this.email,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
      username: username ?? this.username,
      favoriteClubsCount: favoriteClubsCount ?? this.favoriteClubsCount,
      raverCoins: raverCoins ?? this.raverCoins,
      userPhotos: userPhotos ?? this.userPhotos,
    );
  }
}

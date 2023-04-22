import 'package:equatable/equatable.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';

class UserProfile extends Equatable {
  final String userId;
  final String email;
  final String username;
  final String profilePictureUrl;
  final int raverCoins;
  final int favoritesCount;
  final int ticketsCount;
  final List<WallPhoto> userPhotos;

  const UserProfile({
    required this.userId,
    required this.email,
    this.profilePictureUrl = '',
    this.username = '',
    this.raverCoins = 0,
    this.favoritesCount = 0,
    this.ticketsCount = 0,
    this.userPhotos = const [],
  });

  @override
  List<Object?> get props => [
        userId,
        email,
        username,
        profilePictureUrl,
        raverCoins,
        favoritesCount,
        ticketsCount,
        userPhotos,
      ];

  UserProfile copyWith({
    String? email,
    String? username,
    String? profilePictureUrl,
    int? raverCoins,
    int? favoritesCount,
    int? ticketsCount,
    List<WallPhoto>? userPhotos,
  }) {
    return UserProfile(
      userId: userId,
      email: email ?? this.email,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
      username: username ?? this.username,
      raverCoins: raverCoins ?? this.raverCoins,
      favoritesCount: favoritesCount ?? this.favoritesCount,
      ticketsCount: ticketsCount ?? this.ticketsCount,
      userPhotos: userPhotos ?? this.userPhotos,
    );
  }
}

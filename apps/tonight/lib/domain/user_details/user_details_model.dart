import 'package:clubs/clubs.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class UserDetails extends Equatable {
  final String userId;
  final String username;
  final List<Club> favoriteClubs;
  final int raverCoins;
  final String? profilePictureUrl;

  const UserDetails({
    required this.userId,
    required this.username,
    required this.favoriteClubs,
    required this.raverCoins,
    this.profilePictureUrl,
  });

  @override
  List<Object?> get props => [
        userId,
        username,
        profilePictureUrl,
        raverCoins,
        favoriteClubs,
      ];

  UserDetails copyWith({
    String? username,
    List<Club>? favoriteClubs,
    int? raverCoins,
    Option<String>? profilePictureUrl,
  }) {
    return UserDetails(
      userId: userId,
      username: username ?? this.username,
      favoriteClubs: favoriteClubs ?? this.favoriteClubs,
      raverCoins: raverCoins ?? this.raverCoins,
      profilePictureUrl: profilePictureUrl != null
          ? profilePictureUrl.fold(
              () => null,
              (url) => url,
            )
          : this.profilePictureUrl,
    );
  }
}

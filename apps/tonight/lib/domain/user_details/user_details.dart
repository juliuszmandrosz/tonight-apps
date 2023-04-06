import 'package:clubs/clubs.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class UserDetails extends Equatable {
  final String id;
  final String username;
  final List<Club> favoriteClubs;
  final int raverCoins;
  final String? profilePictureUrl;

  const UserDetails({
    required this.id,
    required this.username,
    required this.favoriteClubs,
    required this.raverCoins,
    this.profilePictureUrl,
  });

  @override
  List<Object?> get props => [
        id,
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
      id: id,
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

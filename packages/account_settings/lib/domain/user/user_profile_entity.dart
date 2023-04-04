import 'package:equatable/equatable.dart';

class UserProfile extends Equatable {
  final String id;
  final String email;
  final String username;
  final String profilePictureUrl;
  final List<String> favoriteClubIds;
  final List<String> favoriteEventIds;
  final Map<String, int> attendance;
  final List<String> pushNotificationTokens;
  final int raverCoins;

  const UserProfile({
    required this.id,
    required this.email,
    this.profilePictureUrl = '',
    this.username = '',
    this.favoriteClubIds = const [],
    this.favoriteEventIds = const [],
    this.attendance = const {},
    this.pushNotificationTokens = const [],
    this.raverCoins = 0,
  });

  @override
  List<Object?> get props => [
        id,
        email,
        username,
        profilePictureUrl,
        favoriteClubIds,
        favoriteEventIds,
        attendance,
        pushNotificationTokens,
        raverCoins,
      ];

  UserProfile copyWith({
    String? email,
    String? username,
    String? profilePictureUrl,
    List<String>? favoriteClubIds,
    List<String>? favoriteEventIds,
    Map<String, int>? attendance,
    List<String>? pushNotificationTokens,
    int? raverCoins,
  }) {
    return UserProfile(
      id: id,
      email: email ?? this.email,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
      username: username ?? this.username,
      favoriteClubIds: favoriteClubIds ?? this.favoriteClubIds,
      favoriteEventIds: favoriteEventIds ?? this.favoriteEventIds,
      attendance: attendance ?? this.attendance,
      pushNotificationTokens:
          pushNotificationTokens ?? this.pushNotificationTokens,
      raverCoins: raverCoins ?? this.raverCoins,
    );
  }
}

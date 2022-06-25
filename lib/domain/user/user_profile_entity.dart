import 'package:equatable/equatable.dart';

class UserProfile extends Equatable {
  final String id;
  final String email;
  final String username;
  final List<String> favoriteClubIds;
  final List<String> favoriteEventIds;
  final Map<String, int> attendance;
  final List<String> pushNotificationTokens;

  const UserProfile({
    required this.id,
    required this.email,
    this.username = '',
    this.favoriteClubIds = const [],
    this.favoriteEventIds = const [],
    this.attendance = const {},
    this.pushNotificationTokens = const [],
  });

  @override
  List<Object?> get props => [
        id,
        email,
        username,
        favoriteClubIds,
        favoriteEventIds,
        attendance,
        pushNotificationTokens,
      ];

  UserProfile copyWith({
    String? email,
    String? username,
    List<String>? favoriteClubIds,
    List<String>? favoriteEventIds,
    Map<String, int>? attendance,
    List<String>? pushNotificationTokens,
  }) {
    return UserProfile(
      id: id,
      email: email ?? this.email,
      username: username ?? this.username,
      favoriteClubIds: favoriteClubIds ?? this.favoriteClubIds,
      favoriteEventIds: favoriteEventIds ?? this.favoriteEventIds,
      attendance: attendance ?? this.attendance,
      pushNotificationTokens:
          pushNotificationTokens ?? this.pushNotificationTokens,
    );
  }
}

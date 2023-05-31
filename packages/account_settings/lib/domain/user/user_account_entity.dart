import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class UserAccount extends Equatable {
  final String id;
  final String email;
  final String phoneNumber;
  final String username;
  final String profilePictureUrl;
  final List<String> favoriteClubIds;
  final List<String> favoriteEventIds;
  final Map<String, int> attendance;
  final List<String> pushNotificationTokens;
  final int raverCoins;
  final int ticketsCount;
  final int photosCount;
  final DateTime? lastDailySpinAt;

  const UserAccount({
    required this.id,
    this.lastDailySpinAt,
    this.email = '',
    this.phoneNumber = '',
    this.profilePictureUrl = '',
    this.username = '',
    this.favoriteClubIds = const [],
    this.favoriteEventIds = const [],
    this.attendance = const {},
    this.pushNotificationTokens = const [],
    this.raverCoins = 0,
    this.ticketsCount = 0,
    this.photosCount = 0,
  });

  @override
  List<Object?> get props => [
        id,
        email,
        phoneNumber,
        username,
        profilePictureUrl,
        favoriteClubIds,
        favoriteEventIds,
        attendance,
        pushNotificationTokens,
        raverCoins,
        ticketsCount,
        photosCount,
        lastDailySpinAt,
      ];

  UserAccount copyWith({
    String? email,
    String? username,
    String? phoneNumber,
    String? profilePictureUrl,
    List<String>? favoriteClubIds,
    List<String>? favoriteEventIds,
    Map<String, int>? attendance,
    List<String>? pushNotificationTokens,
    int? raverCoins,
    int? ticketsCount,
    int? photosCount,
    bool? isPhoneNumberVerified,
    Option<DateTime>? lastDailySpinAt,
  }) {
    return UserAccount(
      id: id,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
      username: username ?? this.username,
      favoriteClubIds: favoriteClubIds ?? this.favoriteClubIds,
      favoriteEventIds: favoriteEventIds ?? this.favoriteEventIds,
      attendance: attendance ?? this.attendance,
      pushNotificationTokens:
          pushNotificationTokens ?? this.pushNotificationTokens,
      raverCoins: raverCoins ?? this.raverCoins,
      ticketsCount: ticketsCount ?? this.ticketsCount,
      photosCount: photosCount ?? this.photosCount,
      lastDailySpinAt: lastDailySpinAt != null
          ? lastDailySpinAt.fold(
              () => null,
              (value) => value,
            )
          : this.lastDailySpinAt,
    );
  }
}

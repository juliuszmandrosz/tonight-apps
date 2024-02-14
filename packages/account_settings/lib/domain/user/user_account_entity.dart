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
  final bool isNewsletterSubscribed;
  final DateTime? lastDailySpinAt;
  final DateTime? lastTonightVoucherUseAt;
  final DateTime? birthdate;
  final String? gender;
  final String? cityId;
  final String? cityName;

  const UserAccount({
    required this.id,
    this.lastDailySpinAt,
    this.lastTonightVoucherUseAt,
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
    this.isNewsletterSubscribed = false,
    this.birthdate,
    this.gender,
    this.cityId,
    this.cityName,
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
        lastTonightVoucherUseAt,
        birthdate,
        gender,
        cityId,
        cityName,
        isNewsletterSubscribed,
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
    Option<DateTime>? lastTonightVoucherUseAt,
    Option<DateTime>? birthdate,
    Option<String>? gender,
    Option<String>? cityId,
    Option<String>? cityName,
    bool? isNewsletterSubscribed,
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
      lastTonightVoucherUseAt: lastTonightVoucherUseAt != null
          ? lastTonightVoucherUseAt.fold(
              () => null,
              (value) => value,
            )
          : this.lastTonightVoucherUseAt,
      birthdate: birthdate != null
          ? birthdate.fold(
              () => null,
              (value) => value,
            )
          : this.birthdate,
      gender: gender != null
          ? gender.fold(
              () => null,
              (value) => value,
            )
          : this.gender,
      cityId: cityId != null
          ? cityId.fold(
              () => null,
              (value) => value,
            )
          : this.cityId,
      cityName: cityName != null
          ? cityName.fold(
              () => null,
              (value) => value,
            )
          : this.cityName,
      isNewsletterSubscribed:
          isNewsletterSubscribed ?? this.isNewsletterSubscribed,
    );
  }
}

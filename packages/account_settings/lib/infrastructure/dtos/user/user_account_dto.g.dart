// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAccountDto _$$_UserAccountDtoFromJson(Map<String, dynamic> json) =>
    _$_UserAccountDto(
      email: json['email'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      profilePictureUrl: json['profilePictureUrl'] as String? ?? '',
      username: json['username'] as String? ?? '',
      favoriteClubIds: (json['favoriteClubIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      favoriteEventIds: (json['favoriteEventIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      attendance: (json['attendance'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int),
          ) ??
          const {},
      pushNotificationTokens: (json['pushNotificationTokens'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      raverCoins: json['raverCoins'] as int? ?? 0,
      ticketsCount: json['ticketsCount'] as int? ?? 0,
      photosCount: json['photosCount'] as int? ?? 0,
      lastDailySpinAt: const FirebaseNullableTimestampJsonConverter()
          .fromJson(json['lastDailySpinAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_UserAccountDtoToJson(_$_UserAccountDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'profilePictureUrl': instance.profilePictureUrl,
      'username': instance.username,
      'favoriteClubIds': instance.favoriteClubIds,
      'favoriteEventIds': instance.favoriteEventIds,
      'attendance': instance.attendance,
      'pushNotificationTokens': instance.pushNotificationTokens,
      'raverCoins': instance.raverCoins,
      'ticketsCount': instance.ticketsCount,
      'photosCount': instance.photosCount,
      'lastDailySpinAt': const FirebaseNullableTimestampJsonConverter()
          .toJson(instance.lastDailySpinAt),
    };

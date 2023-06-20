import 'package:account_settings/domain/user/user_account_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_account_dto.freezed.dart';
part 'user_account_dto.g.dart';

@freezed
class UserAccountDto with _$UserAccountDto {
  const UserAccountDto._();

  @JsonSerializable()
  const factory UserAccountDto({
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
    @Default('') String email,
    @Default('') String phoneNumber,
    @Default('') String profilePictureUrl,
    @Default('') String username,
    @Default([]) List<String> favoriteClubIds,
    @Default([]) List<String> favoriteEventIds,
    @Default({}) Map<String, int> attendance,
    @Default([]) List<String> pushNotificationTokens,
    @Default(0) int raverCoins,
    @Default(0) int ticketsCount,
    @Default(0) int photosCount,
    @FirebaseNullableTimestampJsonConverter() DateTime? lastDailySpinAt,
    @FirebaseNullableTimestampJsonConverter() DateTime? lastTonightVoucherUseAt,
    @FirebaseNullableTimestampJsonConverter() DateTime? birthdate,
    String? gender,
    String? cityId,
    String? cityName,
  }) = _UserAccountDto;

  factory UserAccountDto.fromDomain(UserAccount user) {
    return UserAccountDto(
      id: user.id,
      email: user.email,
      profilePictureUrl: user.profilePictureUrl,
      username: user.username,
      favoriteClubIds: user.favoriteClubIds,
      favoriteEventIds: user.favoriteEventIds,
      attendance: user.attendance,
      pushNotificationTokens: user.pushNotificationTokens,
      raverCoins: user.raverCoins,
      ticketsCount: user.ticketsCount,
      photosCount: user.photosCount,
      phoneNumber: user.phoneNumber,
      lastDailySpinAt: user.lastDailySpinAt,
      lastTonightVoucherUseAt: user.lastTonightVoucherUseAt,
      birthdate: user.birthdate,
      gender: user.gender,
      cityId: user.cityId,
      cityName: user.cityName,
    );
  }

  factory UserAccountDto.fromJson(Map<String, dynamic> json) =>
      _$UserAccountDtoFromJson(json);

  factory UserAccountDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return UserAccountDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  UserAccount toDomain() {
    return UserAccount(
      id: id!,
      email: email,
      profilePictureUrl: profilePictureUrl,
      username: username,
      favoriteClubIds: favoriteClubIds,
      favoriteEventIds: favoriteEventIds,
      attendance: attendance,
      pushNotificationTokens: pushNotificationTokens,
      raverCoins: raverCoins,
      ticketsCount: ticketsCount,
      photosCount: photosCount,
      phoneNumber: phoneNumber,
      lastDailySpinAt: lastDailySpinAt,
      lastTonightVoucherUseAt: lastTonightVoucherUseAt,
      birthdate: birthdate,
      gender: gender,
      cityId: cityId,
      cityName: cityName,
    );
  }
}

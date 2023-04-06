import 'package:account_settings/domain/user/user_account_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_account_dto.freezed.dart';
part 'user_account_dto.g.dart';

@freezed
class UserAccountDto with _$UserAccountDto {
  const UserAccountDto._();

  @JsonSerializable()
  const factory UserAccountDto({
    @JsonKey(ignore: true) String? id,
    required String email,
    @Default('') String profilePictureUrl,
    @Default('') String username,
    @Default([]) List<String> favoriteClubIds,
    @Default([]) List<String> favoriteEventIds,
    @Default({}) Map<String, int> attendance,
    @Default([]) List<String> pushNotificationTokens,
    @Default(0) int raverCoins,
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
    );
  }
}

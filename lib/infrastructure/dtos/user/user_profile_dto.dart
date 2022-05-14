import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_account_settings/domain/user/user_profile_entity.dart';

part 'user_profile_dto.freezed.dart';

part 'user_profile_dto.g.dart';

@freezed
class UserProfileDto with _$UserProfileDto {
  const UserProfileDto._();

  @JsonSerializable()
  const factory UserProfileDto({
    @JsonKey(ignore: true) String? id,
    required String username,
    required String email,
    @Default([]) List<String> favoriteClubIds,
    @Default([]) List<String> favoriteEventIds,
    @Default({}) Map<String, int> attendance,
    @Default(0) int ticketCount,
  }) = _UserProfileDto;

  factory UserProfileDto.fromDomain(UserProfile user) {
    return UserProfileDto(
      id: user.id,
      username: user.username,
      email: user.email,
      favoriteClubIds: user.favoriteClubIds,
      favoriteEventIds: user.favoriteEventIds,
      attendance: user.attendance,
      ticketCount: user.ticketCount,
    );
  }

  factory UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDtoFromJson(json);

  factory UserProfileDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return UserProfileDto.fromJson(documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  UserProfile toDomain() {
    return UserProfile(
      id: id!,
      username: username,
      email: email,
      favoriteClubIds: favoriteClubIds,
      favoriteEventIds: favoriteEventIds,
      attendance: attendance,
      ticketCount: ticketCount,
    );
  }
}

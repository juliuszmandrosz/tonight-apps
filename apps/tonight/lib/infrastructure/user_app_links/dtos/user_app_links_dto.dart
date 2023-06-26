import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/user_app_links/user_app_links_entity.dart';

part 'user_app_links_dto.freezed.dart';
part 'user_app_links_dto.g.dart';

@freezed
class UserAppLinksDto with _$UserAppLinksDto {
  const UserAppLinksDto._();

  const factory UserAppLinksDto({
    required String facebook,
    required String instagram,
    required String tikTok,
    required String discord,
    required String privacyPolicy,
    required String termsOfService,
  }) = _UserAppLinksDto;

  factory UserAppLinksDto.fromJson(Map<String, dynamic> json) =>
      _$UserAppLinksDtoFromJson(json);

  factory UserAppLinksDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return UserAppLinksDto.fromJson(
        documentSnapshot.data() as Map<String, dynamic>);
  }

  UserAppLinks toDomain() {
    return UserAppLinks(
      facebook: facebook,
      instagram: instagram,
      tikTok: tikTok,
      discord: discord,
      privacyPolicy: privacyPolicy,
      termsOfService: termsOfService,
    );
  }
}

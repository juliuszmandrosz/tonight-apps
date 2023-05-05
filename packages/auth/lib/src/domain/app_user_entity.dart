import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_entity.freezed.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String id,
    required String providerId,
    required bool isOnboardingCompleted,
    required bool isPhoneNumberVerified,
  }) = _AppUser;
}

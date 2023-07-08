import 'package:auth/src/domain/app_user_entity.dart';
import 'package:common/common.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainExtension on User {
  AppUser toDomain({
    String? username,
    DateTime? lastDailySpinAt,
    bool isAnonymous = false,
  }) {
    return AppUser(
      id: uid,
      isAnonymous: isAnonymous,
      isOnboardingCompleted: username.isNotNullOrEmpty,
      isPhoneNumberVerified: phoneNumber.isNotNullOrEmpty,
      lastDailySpinAt: lastDailySpinAt,
    );
  }
}

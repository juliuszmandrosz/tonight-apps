import 'package:auth/src/domain/app_user_entity.dart';
import 'package:common/common.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainExtension on User {
  AppUser toDomain({String? username, DateTime? lastDailySpinAt}) {
    return AppUser(
      id: uid,
      providerId: providerData[0].providerId,
      isOnboardingCompleted: username.isNotNullOrEmpty,
      isPhoneNumberVerified: phoneNumber.isNotNullOrEmpty,
      lastDailySpinAt: lastDailySpinAt,
    );
  }
}

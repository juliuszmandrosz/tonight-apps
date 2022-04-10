import 'package:firebase_auth/firebase_auth.dart';
import 'package:raver_auth/src/domain/app_user_entity.dart';

extension FirebaseUserDomainExtension on User {
  AppUser toDomain() {
    return AppUser(
      id: uid,
      providerId: providerData[0].providerId,
    );
  }
}

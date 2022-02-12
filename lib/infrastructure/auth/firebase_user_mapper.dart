import 'package:firebase_auth/firebase_auth.dart';
import 'package:raver/domain/auth/app_user.dart';

extension FirebaseUserDomainExtension on User {
  AppUser toDomain() {
    return AppUser(id: uid);
  }
}

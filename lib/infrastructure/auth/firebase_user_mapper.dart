import 'package:firebase_auth/firebase_auth.dart';
import 'package:raver/domain/auth/app_user.dart';
import 'package:raver/domain/core/value_objects/unique_id.dart';

extension FirebaseUserDomainExtension on User {
  AppUser toDomain() {
    return AppUser(id: UniqueId.fromUniqueString(uid));
  }
}

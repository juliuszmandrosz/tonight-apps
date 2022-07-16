import 'package:dartz/dartz.dart';
import 'package:raver_auth/src/domain/app_user_entity.dart';
import 'package:raver_auth/src/domain/auth_failure.dart';

abstract class CommonAuthFacade {
  Future<void> signOut();

  Future<Stream<Option<AppUser>>> listenToAuthStateChange();

  Future<Either<AuthFailure, Unit>> deleteAccount();
}

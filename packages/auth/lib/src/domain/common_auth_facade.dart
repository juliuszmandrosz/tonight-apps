import 'package:auth/src/domain/app_user_entity.dart';
import 'package:auth/src/domain/auth_failure.dart';
import 'package:dartz/dartz.dart';

abstract class CommonAuthFacade {
  Future<void> signOut();

  Stream<Option<AppUser>> listenToAuthStateChange();

  Future<Either<AuthFailure, Unit>> deleteAccount();
}

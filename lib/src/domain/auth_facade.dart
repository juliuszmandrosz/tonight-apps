import 'package:dartz/dartz.dart';
import 'package:raver_auth/src/domain/app_user_entity.dart';
import 'package:raver_auth/src/domain/auth_failure.dart';

abstract class AuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Option<AppUser>> getSignedUser();

  Future<void> signOut();

  Future<Either<AuthFailure, Unit>> resetPassword(String email);

  Future<Either<AuthFailure, Unit>> setUsernameForUser(String username);
}

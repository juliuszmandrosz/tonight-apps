import 'package:dartz/dartz.dart';
import 'package:raver/domain/auth/app_user.dart';
import 'package:raver/domain/auth/auth_failure.dart';

abstract class AuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Either<AuthFailure, Unit>> signInWithFacebook();

  Future<Option<AppUser>> getSignedUser();

  Future<void> signOut();
}

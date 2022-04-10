import 'package:dartz/dartz.dart';
import 'package:raver_auth/raver_auth.dart';

abstract class UserAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPasswordAsUser({
    required String email,
    required String password,
  });

  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPasswordAsUser({
    required String email,
    required String password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogleAsUser();

  Future<Option<AppUser>> getSignedUser();
}

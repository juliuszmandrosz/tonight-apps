import 'package:dartz/dartz.dart';
import 'package:raver_auth/raver_auth.dart';

abstract class UserAuthFacade {
  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForUser(String email);

  Future<Either<AuthFailure, Unit>> signInWithEmailLinkAsUser({
    required String email,
    required Uri link,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogleAsUser();

  Future<Either<AuthFailure, Unit>> signInWithAppleAsUser();

  Future<Option<AppUser>> getSignedUser();
}

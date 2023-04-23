import 'package:auth/auth.dart';
import 'package:dartz/dartz.dart';

abstract class UserAuthFacade {
  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForUser(String email);

  /// Returns true if user is new
  Future<Either<AuthFailure, bool>> signInWithEmailLinkAsUser({
    required String email,
    required Uri link,
  });

  /// Returns true if user is new
  Future<Either<AuthFailure, bool>> signInWithGoogleAsUser();

  /// Returns true if user is new
  Future<Either<AuthFailure, bool>> signInWithAppleAsUser();

  Future<Option<AppUser>> getSignedUser();
}

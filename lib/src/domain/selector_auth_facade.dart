import 'package:dartz/dartz.dart';
import 'package:raver_auth/raver_auth.dart';

abstract class SelectorAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPasswordAsSelector(
    String email,
    String password,
  );

  Future<Either<AuthFailure, Unit>>
      signUpWithEmailPasswordAndAccessCodeAsSelector(
    String email,
    String password,
    String accessCode,
  );

  Future<Option<AppUser>> getSignedSelector();
}

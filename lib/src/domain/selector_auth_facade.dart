import 'package:dartz/dartz.dart';
import 'package:raver_auth/raver_auth.dart';

abstract class SelectorAuthFacade {
  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForSelector(
    String email,
  );

  Future<Either<AuthFailure, Unit>> sendSignUpEmailLinkForSelector({
    required String email,
    required String accessCode,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailLinkAsSelector({
    required String email,
    required Uri link,
  });

  Future<Either<AuthFailure, Unit>> signUpWithEmailLinkAndAccessCodeAsSelector({
    required String email,
    required Uri link,
    required String accessCode,
  });

  Future<Option<AppUser>> getSignedSelector();
}

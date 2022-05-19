import 'package:dartz/dartz.dart';
import 'package:raver_auth/raver_auth.dart';

abstract class PartnerAuthFacade {
  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForPartner(
    String email,
  );

  Future<Either<AuthFailure, Unit>> sendSignUpEmailLinkForPartner({
    required String email,
    required String accessCode,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailLinkAsPartner({
    required String email,
    required Uri link,
  });

  Future<Either<AuthFailure, Unit>> signUpWithEmailLinkAndAccessCodeAsPartner({
    required String email,
    required Uri link,
    required String accessCode,
  });

  Future<Option<AppUser>> getSignedPartner();
}

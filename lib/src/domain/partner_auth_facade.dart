import 'package:dartz/dartz.dart';
import 'package:raver_auth/raver_auth.dart';

abstract class PartnerAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPasswordAsPartner({
    required String email,
    required String password,
  });

  // TODO - Implement onboarding for partners
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPasswordAsPartner({
    required String email,
    required String password,
  });

  Future<Option<AppUser>> getSignedPartner();
}

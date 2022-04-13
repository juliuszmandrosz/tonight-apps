import 'package:dartz/dartz.dart';
import 'package:raver_auth/src/domain/app_user_entity.dart';
import 'package:raver_auth/src/domain/auth_failure.dart';

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

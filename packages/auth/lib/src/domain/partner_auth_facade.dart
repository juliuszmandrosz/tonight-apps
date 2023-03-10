import 'package:dartz/dartz.dart';
import 'package:raver_auth/raver_auth.dart';

abstract class PartnerAuthFacade {
  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForPartner({
    required String email,
    String? accessCode,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailLinkAsPartner({
    required String email,
    required Uri link,
    String? accessCode,
  });

  Future<Option<AppUser>> getSignedPartner();
}

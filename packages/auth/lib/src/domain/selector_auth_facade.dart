import 'package:dartz/dartz.dart';
import 'package:auth/auth.dart';

abstract class SelectorAuthFacade {
  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForSelector({
    required String email,
    String? accessCode,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailLinkAsSelector({
    required String email,
    required Uri link,
    String? accessCode,
  });

  Future<Option<AppUser>> getSignedSelector();
}

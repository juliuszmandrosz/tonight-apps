import 'package:dartz/dartz.dart';
import 'package:raver_auth/raver_auth.dart';

abstract class SelectorAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPasswordAsSelector({
    required String email,
    required String password,
  });

  Future<Option<AppUser>> getSignedSelector();
}

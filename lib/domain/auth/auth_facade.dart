import 'package:dartz/dartz.dart';
import 'package:raver/domain/auth/auth_failure.dart';
import 'package:raver/domain/auth/value_objects/email_address.dart';
import 'package:raver/domain/auth/value_objects/password.dart';

abstract class AuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}

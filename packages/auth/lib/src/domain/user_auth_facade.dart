import 'package:auth/auth.dart';
import 'package:dartz/dartz.dart';

abstract class UserAuthFacade {
  Stream<Option<AppUser>> listenToUserChanges();

  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForUser(String email);

  bool checkIfPhoneNumberIsVerified();

  // Returns verification id and resend token
  Stream<Either<AuthFailure, Tuple2<String, int?>>>
      sendSmsVerificationCodeForUser({
    required String phoneNumber,
    required int? resendToken,
  });

  Future<Either<AuthFailure, AppUser>> signInWithPhoneNumberAsUser({
    required String verificationId,
    required String smsCode,
  });

  Future<Either<AuthFailure, Unit>> linkPhoneNumberForUser({
    required String verificationId,
    required String smsCode,
  });

  Future<Either<AuthFailure, AppUser>> signInWithEmailLinkAsUser({
    required String email,
    required Uri link,
  });

  Future<Either<AuthFailure, AppUser>> signInWithGoogleAsUser();

  Future<Either<AuthFailure, AppUser>> signInWithAppleAsUser();

  Future<Option<AppUser>> getSignedUser();
}

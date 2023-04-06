import 'dart:typed_data';

import 'package:account_settings/domain/user/user_account_entity.dart';
import 'package:account_settings/domain/user_account_failure.dart';
import 'package:dartz/dartz.dart';

abstract class UserAccountFacade {
  Stream<Either<UserAccountFailure, UserAccount>> getUserAccount();

  Future<Either<UserAccountFailure, UserAccount>> getUserById(String id);

  String getProviderForUser();

  Future<Either<UserAccountFailure, Unit>> setUsernameForUser(String username);

  Future<Either<UserAccountFailure, Unit>> submitOnboardingForUser({
    required String username,
    required Uint8List? profilePicture,
  });

  Future<Either<UserAccountFailure, Unit>> setProfilePictureForUser(
    Uint8List profilePicture,
  );

  Future<Either<UserAccountFailure, Unit>> savePushNotificationsToken(
    String token,
  );
}

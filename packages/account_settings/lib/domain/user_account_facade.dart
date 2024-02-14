import 'dart:typed_data';

import 'package:account_settings/domain/user/user_account_entity.dart';
import 'package:account_settings/domain/user_account_failure.dart';
import 'package:dartz/dartz.dart';

abstract class UserAccountFacade {
  Stream<Either<UserAccountFailure, UserAccount>> getUserAccount();

  Future<Either<UserAccountFailure, Option<UserAccount>>> getCurrentUser();

  Future<Either<UserAccountFailure, UserAccount>> getUserById(String id);

  Future<Either<UserAccountFailure, Unit>> setUsernameForUser(String username);

  Future<Either<UserAccountFailure, Unit>> submitOnboardingForUser({
    required String username,
    required bool isNewsletterSubscribed,
    required String? cityId,
    required String? cityName,
    required DateTime? birthdate,
    required String? gender,
    required Uint8List? profilePicture,
    required String? email,
  });

  Future<Either<UserAccountFailure, Unit>> updateProfilePictureForUser({
    required Uint8List newProfilePicture,
    required String currentProfilePictureUrl,
  });

  Future<Either<UserAccountFailure, Unit>> deleteProfilePicture(
    String pictureUrl,
  );

  Future<Either<UserAccountFailure, Unit>> savePushNotificationsToken(
    String token,
  );
}

import 'dart:typed_data';

import 'package:account_settings/domain/user/user_profile_entity.dart';
import 'package:account_settings/domain/user_profile_failure.dart';
import 'package:dartz/dartz.dart';

abstract class UserAccountFacade {
  Stream<Either<UserProfileFailure, UserProfile>> getProfile();

  String getProviderForUser();

  Future<Either<UserProfileFailure, Unit>> setUsernameForUser(String username);

  /// Returns profile picture url
  Future<Either<UserProfileFailure, String>> setProfilePictureForUser(
    Uint8List profilePhoto,
  );

  Future<Either<UserProfileFailure, Unit>> savePushNotificationsToken(
    String token,
  );
}

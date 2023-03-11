import 'package:dartz/dartz.dart';
import 'package:raver_account_settings/domain/user_profile_failure.dart';
import 'package:raver_account_settings/domain/user/user_profile_entity.dart';

abstract class UserAccountFacade {
  Stream<Either<UserProfileFailure, UserProfile>> getProfile();

  String getProviderForUser();

  Future<Either<UserProfileFailure, Unit>> setUsernameForUser(String username);

  Future<Either<UserProfileFailure, Unit>> savePushNotificationsToken(
    String token,
  );
}

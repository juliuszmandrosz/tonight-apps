import 'package:dartz/dartz.dart';
import 'package:raver_account_settings/domain/mixins/account_operations_mixin.dart';
import 'package:raver_account_settings/domain/profile_failure.dart';
import 'package:raver_account_settings/domain/user/user_profile_entity.dart';

abstract class UserAccountFacade with AccountOperationMixin {
  Stream<Either<ProfileFailure, UserProfile>> getProfile();

  String getProviderForUser();

  Future<Either<ProfileFailure, Unit>> setUsernameForUser(String username);
}

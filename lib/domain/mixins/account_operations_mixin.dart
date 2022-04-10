import 'package:dartz/dartz.dart';
import 'package:raver_account_settings/domain/profile_failure.dart';

mixin AccountOperationMixin{
  Future<Either<ProfileFailure, Unit>> changePassword(
      String oldPassword, String newPassword);
}
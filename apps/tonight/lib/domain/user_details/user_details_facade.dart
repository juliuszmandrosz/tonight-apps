import 'package:dartz/dartz.dart';
import 'package:tonight/domain/user_details/user_details_entity.dart';
import 'package:tonight/domain/user_details/user_details_failure.dart';

abstract class UserDetailsFacade {
  Future<Either<UserDetailsFailure, UserDetails>> getUserDetails(String userId);
}

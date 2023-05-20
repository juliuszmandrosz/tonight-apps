import 'package:dartz/dartz.dart';
import 'package:tonight/domain/user_app_links/user_app_links_entity.dart';
import 'package:tonight/domain/user_app_links/user_app_links_failure.dart';

abstract class UserAppLinksFacade {
  Future<Either<UserAppLinksFailure, UserAppLinks>> getUserAppLinks();
}

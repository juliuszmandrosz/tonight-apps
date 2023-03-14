import 'package:dartz/dartz.dart';
import 'package:common/domain/remote_config/remote_config_failure.dart';

abstract class RemoteConfigFacade {
  Future<Either<RemoteConfigFailure, Unit>> activateRemoteConfig();
}

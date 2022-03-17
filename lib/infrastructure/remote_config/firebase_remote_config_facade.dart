import 'package:dartz/dartz.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:raver/domain/remote_config/remote_config_facade.dart';
import 'package:raver/domain/remote_config/remote_config_failure.dart';

class FirebaseRemoteConfigFacade implements RemoteConfigFacade {
  final FirebaseRemoteConfig _firebaseRemoteConfig;
  final Logger _logger;

  FirebaseRemoteConfigFacade({
    required FirebaseRemoteConfig firebaseRemoteConfig,
    required Logger logger,
  })  : _firebaseRemoteConfig = firebaseRemoteConfig,
        _logger = logger;

  @override
  Future<Either<RemoteConfigFailure, Unit>> activateRemoteConfig() async {
    try {
      //Duration.zero - force immediate fetch from server
      await _firebaseRemoteConfig.setConfigSettings(RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: Duration.zero));
      await _firebaseRemoteConfig.fetchAndActivate();
      return right(unit);
    } on PlatformException catch (e) {
      _logger.e("Remote Config error during fetching config EXCEPTION: $e");
      return left(RemoteConfigFailure.unexpected());
    } on Exception catch (e) {
      _logger.e(
          "Unhandled exception occurred during remote config setup EXCEPTION: $e");
      return left(RemoteConfigFailure.unexpected());
    }
  }
}

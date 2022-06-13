import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:raver/domain/remote_config/remote_config_facade.dart';
import 'package:raver/domain/remote_config/remote_config_failure.dart';

class FirebaseRemoteConfigFacade implements RemoteConfigFacade {
  final FirebaseRemoteConfig _firebaseRemoteConfig;
  final Logger _logger;
  final FirebaseCrashlytics _crashlytics;

  FirebaseRemoteConfigFacade({
    required FirebaseRemoteConfig firebaseRemoteConfig,
    required Logger logger,
    required FirebaseCrashlytics firebaseCrashlytics,
  })  : _firebaseRemoteConfig = firebaseRemoteConfig,
        _logger = logger,
        _crashlytics = firebaseCrashlytics;

  @override
  Future<Either<RemoteConfigFailure, Unit>> activateRemoteConfig() async {
    try {
      //Duration.zero - force immediate fetch from server
      await _firebaseRemoteConfig.setConfigSettings(
        RemoteConfigSettings(
            fetchTimeout: const Duration(seconds: 10),
            minimumFetchInterval: Duration.zero),
      );

      await _firebaseRemoteConfig.fetchAndActivate();
      return right(unit);
    } on PlatformException catch (e) {
      _logger.e("Platform Exception fetching config EXCEPTION: $e");
      await _crashlytics.recordError(e, StackTrace.current);
      return left(RemoteConfigFailure.unexpected());
    } on FormatException catch (e) {
      _logger.e("Format Exception fetching config EXCEPTION: $e");
      // This happens when the user is offline and signed in when opening the application,
      // so we don't want report this to crashlytics
      return left(RemoteConfigFailure.unexpected());
    }
  }
}

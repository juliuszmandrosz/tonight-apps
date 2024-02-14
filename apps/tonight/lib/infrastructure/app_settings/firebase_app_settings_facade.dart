import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/app_settings/app_settings_entity.dart';
import 'package:tonight/domain/app_settings/app_settings_facade.dart';
import 'package:tonight/domain/app_settings/app_settings_failure.dart';
import 'package:tonight/infrastructure/app_settings/dtos/app_settings_dto.dart';

class FirebaseAppSettingsFacade implements AppSettingsFacade {
  final FirebaseFirestore _firestore;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseAppSettingsFacade(this._firestore, this._crashlytics, this._logger);

  @override
  Future<Either<AppSettingsFailure, AppSettings>> getAppSettings() async {
    try {
      final appSettings = await _firestore.appSettings.doc('settings').get();
      final result = AppSettingsDto.fromFirebase(appSettings).toDomain();
      return right(result);
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(AppSettingsFailure.unexpected());
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:tonight/domain/app_settings/app_settings_entity.dart';
import 'package:tonight/domain/app_settings/app_settings_failure.dart';

abstract class AppSettingsFacade {
  Future<Either<AppSettingsFailure, AppSettings>> getAppSettings();
}

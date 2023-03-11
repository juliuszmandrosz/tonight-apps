import 'package:dartz/dartz.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:raver/domain/app_info/app_info_failure.dart';

abstract class AppInfoFacade {
  Stream<Either<AppInfoFailure, PackageInfo>> getProfile();
}

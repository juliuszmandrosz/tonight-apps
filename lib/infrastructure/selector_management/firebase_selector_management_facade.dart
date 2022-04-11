import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:raver_partners/domain/selector_management/selector_management_facade.dart';
import 'package:raver_partners/domain/selector_management/selector_management_failure.dart';
import 'package:raver_partners/infrastructure/selector_management/cloud_functions/selector_cloud_functions_facade.dart';

class FirebaseSelectorManagementFacade implements SelectorManagementFacade {
  final SelectorManagementCloudFunctionsFacade _cloudFunctionsFacade;
  final Logger _logger;

  FirebaseSelectorManagementFacade({
    required SelectorManagementCloudFunctionsFacade
        selectorCloudFunctionsFacade,
    required Logger logger,
  })  : _cloudFunctionsFacade = selectorCloudFunctionsFacade,
        _logger = logger;

  @override
  Future<Either<SelectorManagementFailure, Unit>> createAccountForSelector({
    required String email,
    required String password,
  }) async {
    try {
      await _cloudFunctionsFacade.addSelector(email, password);
      return right(unit);
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Firebase Functions Exception during "
        "creating account for selector EXCEPTION: $e",
      );
      return left(SelectorManagementFailure.unexpected());
    }
  }
}

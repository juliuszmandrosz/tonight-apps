import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:raver_clubs/infrastructure/cloud_functions/cloud_functions_names.dart';

abstract class ClubCloudFunctionsFacade {
  Future<Unit> useSelectorAccessCode(String accessCode);
}

class ClubCloudFunctionsFacadeImpl implements ClubCloudFunctionsFacade {
  final FirebaseFunctions _firebaseFunctions;

  ClubCloudFunctionsFacadeImpl(this._firebaseFunctions);

  @override
  Future<Unit> useSelectorAccessCode(String accessCode) async {
    final useSelectorAccessCodeFn =
        _firebaseFunctions.httpsCallable(useSelectorAccessCodeFnName);

    await useSelectorAccessCodeFn.call({'accessCode': accessCode});

    return unit;
  }
}

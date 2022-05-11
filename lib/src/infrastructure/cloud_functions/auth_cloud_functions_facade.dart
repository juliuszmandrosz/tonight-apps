import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:raver_auth/src/infrastructure/cloud_functions/cloud_function_names.dart';

abstract class AuthCloudFunctionsFacade {
  Future<Unit> checkUserClaim(String email);

  Future<Unit> checkPartnerClaim(String email);

  Future<Unit> checkSelectorClaim(String email);

  Future<Unit> addUser();

  Future<Unit> addPartner(String connectedAccountId);

  Future<Unit> addSelector(String email, String accessCode);

  Future<Unit> checkSelectorAccessCode(String accessCode);
}

class AuthCloudFunctionsFacadeImpl implements AuthCloudFunctionsFacade {
  final FirebaseFunctions _firebaseFunctions;

  AuthCloudFunctionsFacadeImpl(this._firebaseFunctions);

  @override
  Future<Unit> checkUserClaim(String email) async {
    final checkUserClaimFn =
        _firebaseFunctions.httpsCallable(checkUserClaimFnName);

    await checkUserClaimFn.call({'email': email});

    return unit;
  }

  @override
  Future<Unit> checkPartnerClaim(String email) async {
    final checkPartnerClaimFn =
        _firebaseFunctions.httpsCallable(checkPartnerClaimFnName);

    await checkPartnerClaimFn.call({'email': email});

    return unit;
  }

  @override
  Future<Unit> checkSelectorClaim(String email) async {
    final checkSelectorClaimFn =
        _firebaseFunctions.httpsCallable(checkSelectorClaimFnName);

    await checkSelectorClaimFn.call({'email': email});

    return unit;
  }

  @override
  Future<Unit> addUser() async {
    final addUserFn = _firebaseFunctions.httpsCallable(addUserFnName);

    await addUserFn.call();

    return unit;
  }

  @override
  Future<Unit> addPartner(String connectedAccountId) async {
    final addPartnerFn = _firebaseFunctions.httpsCallable(addPartnerFnName);

    await addPartnerFn.call({'connectedAccountId': connectedAccountId});

    return unit;
  }

  @override
  Future<Unit> addSelector(String email, String accessCode) async {
    final addSelectorFn = _firebaseFunctions.httpsCallable(addSelectorFnName);

    await addSelectorFn.call({'email': email, 'accessCode': accessCode});

    return unit;
  }

  @override
  Future<Unit> checkSelectorAccessCode(String accessCode) async {
    final checkSelectorAccessCodeFn =
        _firebaseFunctions.httpsCallable(checkSelectorAccessCodeFnName);

    await checkSelectorAccessCodeFn.call({'accessCode': accessCode});

    return unit;
  }
}

import 'package:cloud_functions/cloud_functions.dart';
import 'package:raver_auth/src/infrastructure/cloud_functions/cloud_function_names.dart';

abstract class AuthCloudFunctionsFacade {
  Future<void> checkUserClaim(String email);

  Future<void> checkPartnerClaim(String email);

  Future<void> checkSelectorClaim(String email);

  Future<void> addUser();

  Future<void> addPartner();
}

class AuthCloudFunctionsFacadeImpl implements AuthCloudFunctionsFacade {
  @override
  Future<void> checkUserClaim(String email) async {
    final checkUserClaimFn =
        FirebaseFunctions.instance.httpsCallable(checkUserClaimFnName);

    await checkUserClaimFn.call({'email': email});
  }

  @override
  Future<void> checkPartnerClaim(String email) async {
    final checkPartnerClaimFn =
        FirebaseFunctions.instance.httpsCallable(checkPartnerClaimFnName);

    await checkPartnerClaimFn.call({'email': email});
  }

  @override
  Future<void> checkSelectorClaim(String email) async {
    final checkSelectorClaimFn =
        FirebaseFunctions.instance.httpsCallable(checkSelectorClaimFnName);

    await checkSelectorClaimFn.call({'email': email});
  }

  @override
  Future<void> addUser() async {
    final addUserFn = FirebaseFunctions.instance.httpsCallable(addUserFnName);
    await addUserFn.call();
  }

  @override
  Future<void> addPartner() async {
    final addPartnerFn =
        FirebaseFunctions.instance.httpsCallable(addPartnerFnName);
    await addPartnerFn.call();
  }
}

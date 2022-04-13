import 'package:cloud_functions/cloud_functions.dart';
import 'package:raver_auth/src/infrastructure/cloud_functions/cloud_function_names.dart';

abstract class AuthCloudFunctionsFacade {
  Future<void> checkUserClaim(String userEmail);

  Future<void> checkPartnerClaim(String userEmail);

  Future<void> addUser();

  Future<void> addPartner();
}

class AuthCloudFunctionsFacadeImpl implements AuthCloudFunctionsFacade {
  @override
  Future<void> checkUserClaim(String userEmail) async {
    final checkUserClaim =
        FirebaseFunctions.instance.httpsCallable(checkUserClaimFnName);

    await checkUserClaim.call({'userEmail': userEmail});
  }

  @override
  Future<void> checkPartnerClaim(String userEmail) async {
    final checkPartnerClaim =
        FirebaseFunctions.instance.httpsCallable(checkPartnerClaimFnName);

    await checkPartnerClaim.call({'userEmail': userEmail});
  }

  @override
  Future<void> addUser() async {
    final addUser = FirebaseFunctions.instance.httpsCallable(addUserFnName);
    await addUser.call();
  }

  @override
  Future<void> addPartner() async {
    final addPartner =
        FirebaseFunctions.instance.httpsCallable(addPartnerFnName);
    await addPartner.call();
  }
}

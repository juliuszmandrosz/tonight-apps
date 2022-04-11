import 'package:cloud_functions/cloud_functions.dart';
import 'package:raver_partners/infrastructure/selector_management/cloud_functions/cloud_function_names.dart';

abstract class SelectorManagementCloudFunctionsFacade {
  Future<void> addSelector(String email, String password);
}

class SelectorManagementCloudFunctionsFacadeImpl
    implements SelectorManagementCloudFunctionsFacade {
  @override
  Future<void> addSelector(String email, String password) async {
    final addSelectorFn =
        FirebaseFunctions.instance.httpsCallable(addSelectorFnName);
    await addSelectorFn.call({'email': email, 'password': password});
  }
}

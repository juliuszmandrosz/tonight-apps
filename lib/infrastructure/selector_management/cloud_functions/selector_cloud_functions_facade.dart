import 'package:cloud_functions/cloud_functions.dart';
import 'package:raver_partners/infrastructure/selector_management/cloud_functions/cloud_function_names.dart';

abstract class SelectorManagementCloudFunctionsFacade {
  Future<String> generateAccessCodeForSelector();
}

class SelectorManagementCloudFunctionsFacadeImpl
    implements SelectorManagementCloudFunctionsFacade {
  @override
  Future<String> generateAccessCodeForSelector() async {
    final generateAccessCodeForSelectorFn = FirebaseFunctions.instance
        .httpsCallable(generateAccessCodeForSelectorFnName);
    final result = await generateAccessCodeForSelectorFn.call();
    return result.data;
  }
}

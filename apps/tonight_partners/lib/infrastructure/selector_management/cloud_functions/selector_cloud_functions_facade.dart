import 'package:cloud_functions/cloud_functions.dart';
import 'package:tonight_partners/infrastructure/selector_management/cloud_functions/cloud_function_names.dart';

abstract class SelectorManagementCloudFunctionsFacade {
  Future<String> generateAccessCodeForSelector();
}

class SelectorManagementCloudFunctionsFacadeImpl
    implements SelectorManagementCloudFunctionsFacade {
  final FirebaseFunctions _firebaseFunctions;

  SelectorManagementCloudFunctionsFacadeImpl(this._firebaseFunctions);

  @override
  Future<String> generateAccessCodeForSelector() async {
    final generateAccessCodeForSelectorFn =
        _firebaseFunctions.httpsCallable(generateAccessCodeForSelectorFnName);

    final result = await generateAccessCodeForSelectorFn.call();

    return result.data;
  }
}

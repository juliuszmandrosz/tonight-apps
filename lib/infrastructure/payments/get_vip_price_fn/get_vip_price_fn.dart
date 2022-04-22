import 'package:cloud_functions/cloud_functions.dart';
import 'package:raver/infrastructure/core/cloud_functions_names.dart';
import 'package:raver/infrastructure/payments/get_vip_price_fn/get_vip_price_params.dart';

Future<int> getVipPriceFn(GetVipPriceParams params) async {
  final getPromotionCode =
      FirebaseFunctions.instance.httpsCallable(getVipPriceFnName);

  final result = await getPromotionCode.call(params.toJson());

  return result.data;
}

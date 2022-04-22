import 'package:cloud_functions/cloud_functions.dart';
import 'package:raver/infrastructure/core/cloud_functions_names.dart';
import 'package:raver/infrastructure/payments/cloud_functions/params/add_ticket_payment_params.dart';
import 'package:raver/infrastructure/payments/cloud_functions/params/create_ticket_payment_sheet_params.dart';
import 'package:raver/infrastructure/payments/cloud_functions/params/get_vip_price_params.dart';
import 'package:raver/infrastructure/payments/cloud_functions/responses/create_ticket_payment_sheet_respone.dart';

abstract class PaymentCloudFunctionsFacade {
  Future<int> getVipPrice(GetVipPriceParams params);

  Future<CreateTicketPaymentSheetResponse> createTicketPaymentSheet(
    CreateTicketPaymentSheetParams params,
  );

  Future<void> addTicketPayment(AddTicketPaymentParams params);
}

class PaymentCloudFunctionsFacadeImpl implements PaymentCloudFunctionsFacade {
  @override
  Future<int> getVipPrice(GetVipPriceParams params) async {
    final getVipPriceFn =
        FirebaseFunctions.instance.httpsCallable(getVipPriceFnName);

    final result = await getVipPriceFn.call(params.toJson());

    return result.data;
  }

  @override
  Future<CreateTicketPaymentSheetResponse> createTicketPaymentSheet(
    CreateTicketPaymentSheetParams params,
  ) async {
    final createTicketPaymentSheetFn = FirebaseFunctions.instance
        .httpsCallable(createTicketPaymentSheetFnName);

    final result = await createTicketPaymentSheetFn.call(params.toJson());

    return CreateTicketPaymentSheetResponse.fromJson(result.data);
  }

  @override
  Future<void> addTicketPayment(AddTicketPaymentParams params) async {
    final addTicketPaymentFn =
        FirebaseFunctions.instance.httpsCallable(addTicketPaymentFnName);

    await addTicketPaymentFn.call(params.toJson());
  }
}

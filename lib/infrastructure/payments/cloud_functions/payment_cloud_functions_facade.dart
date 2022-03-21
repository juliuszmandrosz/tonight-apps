import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:raver/infrastructure/core/cloud_functions_names.dart';
import 'package:raver/infrastructure/payments/cloud_functions/params/add_ticket_payment_params.dart';
import 'package:raver/infrastructure/payments/cloud_functions/params/add_vip_payment_params.dart';
import 'package:raver/infrastructure/payments/cloud_functions/params/create_ticket_payment_sheet_params.dart';
import 'package:raver/infrastructure/payments/cloud_functions/params/create_vip_payment_sheet_params.dart';
import 'package:raver/infrastructure/payments/cloud_functions/responses/create_payment_sheet_respone.dart';

abstract class PaymentCloudFunctionsFacade {
  Future<int> getVipPrice(String eventId);

  Future<CreatePaymentSheetResponse> createTicketPaymentSheet(
    CreateTicketPaymentSheetParams params,
  );

  Future<CreatePaymentSheetResponse> createVipPaymentSheet(
    CreateVipPaymentSheetParams params,
  );

  Future<Unit> addTicketPayment(AddTicketPaymentParams params);

  Future<Unit> addVipPayment(AddVipPaymentParams params);
}

class PaymentCloudFunctionsFacadeImpl implements PaymentCloudFunctionsFacade {
  @override
  Future<int> getVipPrice(String eventId) async {
    final getVipPriceFn =
        FirebaseFunctions.instance.httpsCallable(getVipPriceFnName);

    final result = await getVipPriceFn.call({'eventId': eventId});

    return result.data;
  }

  @override
  Future<CreatePaymentSheetResponse> createTicketPaymentSheet(
    CreateTicketPaymentSheetParams params,
  ) async {
    final createTicketPaymentSheetFn = FirebaseFunctions.instance
        .httpsCallable(createTicketPaymentSheetFnName);

    final result = await createTicketPaymentSheetFn.call(params.toJson());

    return CreatePaymentSheetResponse.fromJson(result.data);
  }

  @override
  Future<CreatePaymentSheetResponse> createVipPaymentSheet(
    CreateVipPaymentSheetParams params,
  ) async {
    final createVipPaymentSheetFn =
        FirebaseFunctions.instance.httpsCallable(createVipPaymentSheetFnName);

    final result = await createVipPaymentSheetFn.call(params.toJson());

    return CreatePaymentSheetResponse.fromJson(result.data);
  }

  @override
  Future<Unit> addTicketPayment(AddTicketPaymentParams params) async {
    final addTicketPaymentFn =
        FirebaseFunctions.instance.httpsCallable(addTicketPaymentFnName);

    await addTicketPaymentFn.call(params.toJson());

    return unit;
  }

  @override
  Future<Unit> addVipPayment(AddVipPaymentParams params) async {
    final addVipPaymentFn =
        FirebaseFunctions.instance.httpsCallable(addVipPaymentFnName);

    await addVipPaymentFn.call(params.toJson());

    return unit;
  }
}

import 'package:cloud_functions/cloud_functions.dart';
import 'package:raver/infrastructure/core/cloud_functions_names.dart';
import 'package:raver/infrastructure/payments/create_ticket_payment_sheet_fn/create_ticket_payment_sheet_params.dart';
import 'package:raver/infrastructure/payments/create_ticket_payment_sheet_fn/create_ticket_payment_sheet_respone.dart';

Future<CreateTicketPaymentSheetResponse> createTicketPaymentSheetFn(
  CreateTicketPaymentSheetParams params,
) async {
  final createTicketPaymentSheet =
      FirebaseFunctions.instance.httpsCallable(createTicketPaymentSheetFnName);

  final result = await createTicketPaymentSheet.call(params.toJson());

  return CreateTicketPaymentSheetResponse.fromJson(result.data);
}

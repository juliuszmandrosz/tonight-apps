import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:raver_tickets/infrastructure/cloud_functions/cloud_function_names.dart';
import 'package:raver_tickets/infrastructure/cloud_functions/params/return_ticket_params.dart';

abstract class TicketCloudFunctionsFacade {
  Future<Unit> returnTicket(ReturnTicketParams params);
}

class TicketCloudFunctionsFacadeImpl implements TicketCloudFunctionsFacade {
  final FirebaseFunctions _firebaseFunctions;

  TicketCloudFunctionsFacadeImpl({required FirebaseFunctions firebaseFunctions})
      : _firebaseFunctions = firebaseFunctions;

  @override
  Future<Unit> returnTicket(ReturnTicketParams params) async {
    final returnTicketFn = _firebaseFunctions.httpsCallable(returnTicketFnName);

    await returnTicketFn.call(params.toJson());

    return unit;
  }
}

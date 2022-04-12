import 'package:raver_tickets/domain/domain.dart';

const cloudFunctionsFailures = {
  'return-time-expired': TicketFailure.returnTimeIsOver(),
};

import 'package:tickets/domain/domain.dart';

const cloudFunctionsFailures = {
  'return-time-expired': UserTicketFailure.returnTimeIsOver(),
};

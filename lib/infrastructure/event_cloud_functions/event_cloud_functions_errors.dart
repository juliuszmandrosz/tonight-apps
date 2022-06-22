import 'package:raver_events/domain/events/failures/partner_event_failure.dart';

const eventCloudFunctionsErrors = {
  'cancel-time-expired': PartnerEventFailure.cancelTimeExpired(),
  'postpone-time-expired': PartnerEventFailure.postponeTimeExpired(),
  'postpone-time-too-short': PartnerEventFailure.postponeTimeTooShort(),
  'postpone-date-too-late': PartnerEventFailure.postponeDateTooLate(),
};

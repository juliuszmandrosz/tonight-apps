import 'package:raver_events/domain/domain.dart';
import 'package:raver_translations/raver_translations.dart';

String getEventFailureMessage(PartnerEventFailure failure) {
  return failure.map(
    unexpected: (_) => S().serverError,
    cancelTimeExpired: (_) => S().cancelTimeExpired,
    postponeTimeExpired: (_) => S().postponeTimeExpired,
    postponeTimeTooShort: (_) => S().postponeTimeTooShort,
    discountAlreadyApplied: (_) => S().discountHasBeenUsed,
    eventExistsInDateRange: (_) => S().eventExistsInDateRange,
    postponeDateTooLate: (_) => S().postponeDateTooLate,
    permissionDenied: (_) => S().operationNotAllowed,
    noConnection: (_) => S().errorCheckInternetConnection,
  );
}

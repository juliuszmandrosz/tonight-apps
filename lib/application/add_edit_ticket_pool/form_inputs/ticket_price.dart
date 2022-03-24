import 'package:formz/formz.dart';
import 'package:raver_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

enum TicketPriceError { empty, tooHigh, tooLow }

final ticketPriceErrorMessages = {
  TicketPriceError.empty: S().enterPrice,
  TicketPriceError.tooHigh: S().priceTooHigh,
  TicketPriceError.tooLow: S().priceTooLow,
};

String? getTicketPriceErrorMessage(AddEditTicketPoolState state) {
  if (state.ticketPrice.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  return ticketPriceErrorMessages[state.ticketPrice.error];
}

class TicketPrice extends FormzInput<int?, TicketPriceError> {
  const TicketPrice.pure() : super.pure(null);

  const TicketPrice.dirty(int? value) : super.dirty(value);

  @override
  TicketPriceError? validator(int? value) {
    if (value == null) {
      return TicketPriceError.empty;
    }

    // TODO - change based on currency

    if (value < 20) {
      return TicketPriceError.tooLow;
    }

    if (value > 100000) {
      return TicketPriceError.tooHigh;
    }

    return null;
  }
}

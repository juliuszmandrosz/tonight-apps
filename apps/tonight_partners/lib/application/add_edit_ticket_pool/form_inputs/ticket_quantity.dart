import 'package:formz/formz.dart';
import 'package:tonight_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';
import 'package:translations/translations.dart';

enum TicketQuantityError { empty, tooLow, tooHigh }

final ticketsQuantityErrorMessages = {
  TicketQuantityError.empty: S().enterQuantity,
  TicketQuantityError.tooLow: S().quantityTooLow,
  TicketQuantityError.tooHigh: S().quantityTooHigh,
};

String? getTicketQuantityErrorMessage(AddEditTicketPoolState state) {
  if (state.ticketQuantity.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  return ticketsQuantityErrorMessages[state.ticketQuantity.error];
}

class TicketQuantity extends FormzInput<int?, TicketQuantityError> {
  const TicketQuantity.pure() : super.pure(null);

  const TicketQuantity.dirty(int? value) : super.dirty(value);

  @override
  TicketQuantityError? validator(int? value) {
    if (value == null) {
      return TicketQuantityError.empty;
    }

    if (value < 1) {
      return TicketQuantityError.tooLow;
    }

    if (value > 100000) {
      return TicketQuantityError.tooHigh;
    }

    return null;
  }
}

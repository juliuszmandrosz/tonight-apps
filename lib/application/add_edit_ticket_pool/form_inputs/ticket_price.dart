import 'package:dartz/dartz.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';
import 'package:raver_partners/application/add_edit_ticket_pool/form_inputs/price_utils.dart';
import 'package:raver_translations/raver_translations.dart';

enum TicketPriceError { empty, tooHigh, tooLow }

String? getTicketPriceErrorMessage(AddEditTicketPoolState state) {
  if (state.ticketPrice.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  switch (state.ticketPrice.error) {
    case TicketPriceError.empty:
      return S().enterPrice;
    case TicketPriceError.tooHigh:
      return '${S().ticketPriceTooHigh} ${getMaxPriceWithCurrency(state)}';
    case TicketPriceError.tooLow:
      return '${S().ticketPriceTooLow} ${getMinPriceWithCurrency(state)}';
    default:
      return S().serverError;
  }
}

class TicketPrice extends FormzInput<int?, TicketPriceError> {
  final Option<CurrencyParams> currencyParams;

  TicketPrice.pure(this.currencyParams) : super.pure(null);

  TicketPrice.dirty({
    required this.currencyParams,
    int? value,
  }) : super.dirty(value);

  @override
  TicketPriceError? validator(int? value) {
    if (value == null) {
      return TicketPriceError.empty;
    }

    if (value < currencyParams.getOrCrash().minTicketPrice) {
      return TicketPriceError.tooLow;
    }

    if (value > currencyParams.getOrCrash().maxTicketPrice) {
      return TicketPriceError.tooHigh;
    }

    return null;
  }
}

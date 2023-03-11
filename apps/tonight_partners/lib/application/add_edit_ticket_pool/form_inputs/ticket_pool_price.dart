import 'package:dartz/dartz.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';
import 'package:raver_partners/application/add_edit_ticket_pool/form_inputs/price_utils.dart';
import 'package:raver_translations/raver_translations.dart';

enum TicketPoolPriceError { empty, tooHigh, tooLow }

String? getTicketPoolPriceErrorMessage(AddEditTicketPoolState state) {
  if (state.ticketPrice.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  switch (state.ticketPrice.error) {
    case TicketPoolPriceError.empty:
      return S().enterPrice;
    case TicketPoolPriceError.tooHigh:
      return '${S().ticketPriceTooHigh} ${getMaxPriceWithCurrency(state)}';
    case TicketPoolPriceError.tooLow:
      return '${S().ticketPriceTooLow} ${getMinPriceWithCurrency(state)}';
    default:
      return S().serverError;
  }
}

class TicketPoolPrice extends FormzInput<int?, TicketPoolPriceError> {
  final Option<CurrencyParams> currencyParams;

  TicketPoolPrice.pure(this.currencyParams) : super.pure(null);

  TicketPoolPrice.dirty({
    required this.currencyParams,
    int? value,
  }) : super.dirty(value);

  @override
  TicketPoolPriceError? validator(int? value) {
    if (value == null) {
      return TicketPoolPriceError.empty;
    }

    if (value < currencyParams.getOrCrash().minTicketPrice) {
      return TicketPoolPriceError.tooLow;
    }

    if (value > currencyParams.getOrCrash().maxTicketPrice) {
      return TicketPoolPriceError.tooHigh;
    }

    return null;
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';
import 'package:ticket_widget/ticket_widget.dart';

class TicketCheckoutTicketCard extends StatelessWidget {
  const TicketCheckoutTicketCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      builder: (context, state) {
        final event = state.event.getOrCrash();

        final isSoldOut = state.eventTickets.getOrCrash().isSoldOut;

        return TicketWidget(
          height: isSoldOut ? 140 : 120,
          width: double.infinity,
          color: context.surfaceColor,
          isCornerRounded: true,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AutoSizeText(
                      event.eventName,
                      style: context.headline6,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                    AutoSizeText(
                      context.formatDateTimeToLocaleYMDHM(
                        event.eventStartDateTime,
                      ),
                      style: context.bodyText1
                          .copyWith(color: context.secondaryColor),
                      maxLines: 1,
                    ),
                    if (isSoldOut)
                      Text(
                        S().soldOut.toUpperCase(),
                        style: context.subtitle1.copyWith(
                          color: context.tertiaryColor,
                        ),
                      )
                  ],
                ),
              ),
              const SizedBox(width: 20),
              AutoSizeText(
                '${state.ticketPrice.getOrCrash()}'
                '${getCurrencySymbolFromCode(event.currency)}',
                style: context.headline6.copyWith(
                  decorationThickness: 2,
                  decoration: isSoldOut
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  color:
                      isSoldOut ? context.outlineColor : context.onSurfaceColor,
                ),
                maxLines: 1,
              ),
              const SizedBox(width: 10),
              const VerticalDivider(thickness: 2),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  state.isVip ? S().vipVertical : '',
                  textAlign: TextAlign.center,
                  style: context.subtitle1.copyWith(
                    color: context.tertiaryColor,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

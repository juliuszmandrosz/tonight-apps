import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:tonight/application/vip_checkout/vip_checkout_cubit.dart';
import 'package:translations/translations.dart';

class VipCheckoutTicketCard extends StatelessWidget {
  const VipCheckoutTicketCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VipCheckoutCubit, VipCheckoutState>(
      builder: (context, state) {
        final ticket = state.ticket.getOrCrash();

        return TicketWidget(
          height: 120,
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
                      ticket.eventName,
                      style: context.headline6,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                    AutoSizeText(
                      context.formatDateTimeToLocaleYMDHM(
                        ticket.eventStartDateTime,
                      ),
                      style: context.bodyText1
                          .copyWith(color: context.secondaryColor),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              AutoSizeText(
                '${state.vipPrice.getOrCrash()}'
                '${getCurrencySymbolFromCode(ticket.currency)}',
                style: context.headline6,
                maxLines: 1,
              ),
              const SizedBox(width: 10),
              const VerticalDivider(thickness: 2),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  S().vipVertical,
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

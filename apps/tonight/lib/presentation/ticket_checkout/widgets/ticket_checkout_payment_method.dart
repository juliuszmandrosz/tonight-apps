import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payments/application/core/tonight_payment_method.dart';
import 'package:payments/domain/domain.dart';
import 'package:tonight/application/core/payment_methods_translations.dart';
import 'package:tonight/application/ticket_checkout/bloc/ticket_checkout_bloc.dart';
import 'package:tonight/presentation/core/tonight_list_tile_with_title_and_subtitle.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class TicketCheckoutPaymentMethod extends StatelessWidget {
  const TicketCheckoutPaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutBloc, TicketCheckoutState>(
      buildWhen: (p, c) => p.ticketCheckoutData != c.ticketCheckoutData,
      builder: (context, state) {
        final customerData = state.ticketCheckoutData.getOrCrash().customerData;
        final paymentMethod =
            getPaymentMethodFromString(customerData.paymentMethod);
        return Column(
          children: [
            Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 15, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          TonightListTileWithTitleAndSubtitle(
                            title: S().paymentMethod,
                            subtitle:
                                paymentMethodsTranslations[paymentMethod]!,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.surfaceColor,
                          ),
                          child: IconButton(
                            onPressed: () async {
                              final result =
                                  await context.pushRoute<CustomerData>(
                                PaymentMethodRoute(customerData: customerData),
                              );

                              if (context.mounted && result != null) {
                                context.read<TicketCheckoutBloc>().add(
                                      TicketCheckoutEvent.customerDataChanged(
                                        result,
                                      ),
                                    );
                              }
                            },
                            icon: Icon(
                              Icons.mode_edit,
                              color: context.onSurfaceColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

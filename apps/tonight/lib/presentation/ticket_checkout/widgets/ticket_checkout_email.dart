import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payments/domain/entities/customer_data_entity.dart';
import 'package:tonight/application/ticket_checkout/bloc/ticket_checkout_bloc.dart';
import 'package:tonight/presentation/core/tonight_list_tile_with_title_and_subtitle.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class TicketCheckoutEmail extends StatelessWidget {
  const TicketCheckoutEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutBloc, TicketCheckoutState>(
      buildWhen: (previous, current) =>
          previous.ticketCheckoutData != current.ticketCheckoutData,
      builder: (context, state) {
        final customerData = state.ticketCheckoutData.getOrCrash().customerData;
        final email = customerData.email;
        return Card(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TonightListTileWithTitleAndSubtitle(
                    title: S().email,
                    subtitle: email.isNotNullOrEmpty ? email! : S().noData,
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
                          final route = UpdateCustomerEmailRoute(
                            customerData: customerData,
                          );
                          final result =
                              await context.pushRoute<CustomerData>(route);

                          if (context.mounted && result != null) {
                            final event =
                                TicketCheckoutEvent.customerDataChanged(result);
                            context.read<TicketCheckoutBloc>().add(event);
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
        );
      },
    );
  }
}

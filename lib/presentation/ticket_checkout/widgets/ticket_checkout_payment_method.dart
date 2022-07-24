import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver/presentation/core/raver_list_tile_with_title_and_subtitle.dart';
import 'package:raver/presentation/routes/app_router.gr.dart';
import 'package:raver_common/raver_common.dart';

class TicketCheckoutPaymentMethod extends StatelessWidget {
  const TicketCheckoutPaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      builder: (context, state) {
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
                        children: const [
                          RaverListTileWithTitleAndSubtitle(
                            // TODO - add translation
                            title: 'Metoda płatności',
                            subtitle: 'Google Pay',
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
                              context.pushRoute(const PaymentMethodRoute());
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

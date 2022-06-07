import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_payments/domain/domain.dart';

class TicketCheckoutInvoiceData extends StatelessWidget {
  const TicketCheckoutInvoiceData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // TODO - add translation
            const RaverHeadline(
              text: 'Dane do faktury',
              isSmallerVersion: true,
            ),
            IconButton(
              onPressed: () async {
                final checkoutCubit = context.read<TicketCheckoutCubit>();

                final result = await context.pushRoute<InvoiceData>(
                  InvoiceDataRoute(
                    invoiceData: checkoutCubit.state.invoiceData.getOrCrash(),
                  ),
                );

                if (result != null) {
                  checkoutCubit.invoiceDataChanged(result);
                }
              },
              icon: const Icon(Icons.mode_edit),
            ),
          ],
        ),
      ],
    );
  }
}

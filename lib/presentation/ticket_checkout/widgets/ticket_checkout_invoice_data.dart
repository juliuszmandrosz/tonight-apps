import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/routes/app_router.dart';

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
              onPressed: () => context.pushRoute(const InvoiceDataRoute()),
              icon: const Icon(Icons.mode_edit),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_name_input.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_surname_input.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_tax_number_input.dart';

class TicketCheckoutInvoiceData extends StatelessWidget {
  const TicketCheckoutInvoiceData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 30),
        Align(
          alignment: Alignment.centerLeft,
          // TODO - add translation
          child: RaverHeadline(
            text: 'Dane do faktury',
            isSmallerVersion: true,
          ),
        ),
        SizedBox(height: 20),
        TicketCheckoutNameInput(),
        SizedBox(height: 20),
        TicketCheckoutSurnameInput(),
        SizedBox(height: 20),
        TicketCheckoutTaxNumberInput(),
      ],
    );
  }
}

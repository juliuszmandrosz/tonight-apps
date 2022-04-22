import 'package:flutter/material.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCheckoutHeader extends StatelessWidget {
  const TicketCheckoutHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RaverHeadline(
          text: S().tickets(1),
        ),
      ],
    );
  }
}

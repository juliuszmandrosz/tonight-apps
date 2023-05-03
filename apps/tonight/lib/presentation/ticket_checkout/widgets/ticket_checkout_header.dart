import 'package:flutter/material.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

class TicketCheckoutHeader extends StatelessWidget {
  const TicketCheckoutHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TonightHeadline(text: S().tickets(1)),
    );
  }
}

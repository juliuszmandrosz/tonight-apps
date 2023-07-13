import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivateTicketQuantityInfo extends StatelessWidget {
  final int quantity;

  const ActivateTicketQuantityInfo({
    required this.quantity,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 10),
        const FaIcon(FontAwesomeIcons.ticket, size: 24),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            '${quantity}x',
            style: context.headlineSmall,
          ),
        ),
      ],
    );
  }
}

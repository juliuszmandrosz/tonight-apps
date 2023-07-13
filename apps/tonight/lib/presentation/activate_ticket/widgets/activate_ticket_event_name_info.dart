import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivateTicketEventNameInfo extends StatelessWidget {
  final String eventName;

  const ActivateTicketEventNameInfo({
    required this.eventName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 10),
        const FaIcon(FontAwesomeIcons.fire, size: 24),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            eventName,
            style: context.headlineSmall,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

class TicketExpiredInfo extends StatelessWidget {
  const TicketExpiredInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FaIcon(
            FontAwesomeIcons.circleInfo,
            size: 50,
          ),
          const SizedBox(height: 20),
          TonightHeadline(text: S().ticketExpired),
        ],
      ),
    );
  }
}

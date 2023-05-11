import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

class EventDetailsTicketPools extends StatelessWidget {
  final Event event;

  const EventDetailsTicketPools({Key? key, required this.event})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: Align(
        alignment: Alignment.centerLeft,
        child: TonightHeadline(
          text: S().ticketPools,
          isSmallerVersion: true,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Text(
          S().ticketsAvailableOnlyAtGate,
          style: context.titleMedium.copyWith(
            color: context.secondaryColor,
          ),
        ),
      ),
    );
  }
}

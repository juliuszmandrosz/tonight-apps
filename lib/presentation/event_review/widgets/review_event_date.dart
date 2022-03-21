import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/domain/ticket_entity.dart';

class ReviewEventDate extends StatelessWidget {
  final Ticket ticket;

  const ReviewEventDate({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.formatDateTimeToLocaleYMDHM(ticket.eventStartDateTime),
        ),
        const Icon(Icons.arrow_forward_rounded),
        Text(
          context.formatDateTimeToLocaleYMDHM(ticket.eventEndDateTime),
        ),
      ],
    );
  }
}

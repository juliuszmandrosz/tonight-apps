import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        Flexible(
          child: AutoSizeText(
            context.formatDateTimeToLocaleYMDHM(ticket.eventStartDateTime),
            style: context.subtitle1,
            maxLines: 1,
          ),
        ),
        const SizedBox(width: 10),
        const FaIcon(FontAwesomeIcons.arrowRight),
        const SizedBox(width: 10),
        Flexible(
          child: AutoSizeText(
            context.formatDateTimeToLocaleYMDHM(ticket.eventEndDateTime),
            style: context.subtitle1,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}

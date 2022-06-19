import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';

class ReviewEventName extends StatelessWidget {
  final Ticket ticket;

  const ReviewEventName({
    required this.ticket,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      ticket.eventName,
      maxLines: 2,
      style: context.headline6,
      textAlign: TextAlign.center,
    );
  }
}

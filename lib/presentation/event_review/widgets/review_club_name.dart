import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/domain/ticket_entity.dart';

class ReviewClubName extends StatelessWidget {
  final Ticket ticket;

  const ReviewClubName({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ticket.clubName,
          style: context.headline1,
        ),
      ],
    );
  }
}

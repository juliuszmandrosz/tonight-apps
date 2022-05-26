import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketShowQrButton extends StatelessWidget {
  final Ticket ticket;

  const TicketShowQrButton({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>
          AutoRouter.of(context).push(TicketQrRoute(ticket: ticket)),
      child: Text(
        S().showTicket,
        style: context.headline3,
      ),
    );
  }
}

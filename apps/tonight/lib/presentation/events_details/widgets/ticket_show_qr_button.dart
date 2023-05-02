import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tickets/tickets.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/raver_translations.dart';

class TicketShowQrButton extends StatelessWidget {
  final Ticket ticket;

  const TicketShowQrButton({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: FloatingActionButton.extended(
        onPressed: () => context.pushRoute(TicketQrRoute(ticket: ticket)),
        label: Text(S().showTicket),
        icon: const FaIcon(FontAwesomeIcons.qrcode),
      ),
    );
  }
}

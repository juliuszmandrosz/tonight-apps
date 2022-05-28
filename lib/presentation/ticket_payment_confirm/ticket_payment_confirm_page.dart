import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketPaymentConfirmPage extends StatelessWidget {
  final Ticket ticket;

  const TicketPaymentConfirmPage({required this.ticket, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: context.primaryColor,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: const Padding(
                    padding: EdgeInsetsDirectional.all(30),
                    child: Icon(
                      Icons.check_rounded,
                      size: 60,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Text(
                  S().paymentConfirmed,
                  style: context.headline6.copyWith(
                    color: context.primaryColor,
                    fontSize: 28,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => AutoRouter.of(context).replaceAll([
                  const NavigatorRoute(),
                  EventDetailsRoute(eventId: ticket.eventId),
                  TicketQrRoute(ticket: ticket),
                ]),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(S().showTicketQrCode),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => AutoRouter.of(context).popUntilRoot(),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(S().backToEventList),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

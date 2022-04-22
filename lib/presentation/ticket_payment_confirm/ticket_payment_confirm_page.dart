import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketPaymentConfirmPage extends StatelessWidget {
  final String ticketId;

  const TicketPaymentConfirmPage({
    required this.ticketId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
                  color: theme.primaryColor,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(30),
                    child: Icon(
                      Icons.check_rounded,
                      color: theme.backgroundColor,
                      size: 60,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Text(
                  S().paymentConfirmed,
                  style: theme.textTheme.headline1!.copyWith(
                    color: theme.primaryColor,
                    fontSize: 28,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => AutoRouter.of(context).replace(
                  TicketQrRoute(ticketId: ticketId),
                ),
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

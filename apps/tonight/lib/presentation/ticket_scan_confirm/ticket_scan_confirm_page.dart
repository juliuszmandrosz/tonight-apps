import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/raver_translations.dart';

class TicketScanConfirmPage extends StatelessWidget {
  const TicketScanConfirmPage({Key? key}) : super(key: key);

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
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.primaryColor,
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
              AutoSizeText(
                S().ticketScanned,
                style: context.titleLarge.copyWith(
                  color: context.primaryColor,
                  fontSize: 28,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () => context.router.replaceAll(
                    [const WelcomeLoaderRoute()],
                  ),
                  child: Text(S().backToHomePage),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

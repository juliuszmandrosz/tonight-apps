import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/presentation/core/raver_scanner_app_bar.dart';
import 'package:raver_translations/raver_translations.dart';

class TermsOfServicePage extends StatelessWidget {
  const TermsOfServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO - add terms of service
      appBar: RaverScannerAppBar(title: S().termsOfService),
      body: Center(
        child: Text(
          S().availableSoon,
          style: context.subtitle1,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
import 'package:raver_translations/raver_translations.dart';

class TermsOfServicePage extends StatelessWidget {
  const TermsOfServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO - add terms of service
      appBar: RaverPartnersAppBar(title: S().termsOfService),
    );
  }
}

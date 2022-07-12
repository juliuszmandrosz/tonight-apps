import 'package:flutter/material.dart';
import 'package:raver_scanner/presentation/contact/widgets/contact_mail.dart';
import 'package:raver_scanner/presentation/core/raver_scanner_app_bar.dart';
import 'package:raver_translations/raver_translations.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  final contactDetails = const [
    ContactMail(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RaverScannerAppBar(title: S().contact),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, i) => const Divider(),
          itemCount: contactDetails.length + 1,
          itemBuilder: (context, i) =>
              i >= contactDetails.length ? const SizedBox() : contactDetails[i],
        ),
      ),
    );
  }
}

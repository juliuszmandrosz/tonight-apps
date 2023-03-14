import 'package:flutter/material.dart';
import 'package:tonight_scanner/presentation/contact/widgets/contact_mail.dart';
import 'package:tonight_scanner/presentation/core/tonight_scanner_app_bar.dart';
import 'package:translations/translations.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  final contactDetails = const [
    ContactMail(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TonightScannerAppBar(title: S().contact),
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

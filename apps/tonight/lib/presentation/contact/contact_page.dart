import 'package:flutter/material.dart';
import 'package:raver/presentation/contact/contact_mail.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver_translations/raver_translations.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RaverAppBar(title: S().contact),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: const [
            ContactMail(),
            SizedBox(height: 5),
            Divider(),
          ],
        ),
      ),
    );
  }
}

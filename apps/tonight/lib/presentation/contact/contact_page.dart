import 'package:flutter/material.dart';
import 'package:tonight/presentation/contact/contact_mail.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:translations/raver_translations.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TonightAppBar(title: S().contact),
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

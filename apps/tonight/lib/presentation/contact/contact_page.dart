import 'package:flutter/material.dart';
import 'package:tonight/presentation/contact/contact_mail.dart';
import 'package:tonight/presentation/contact/contact_phone.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:translations/translations.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TonightAppBar(title: S().contact),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ContactMail(),
            SizedBox(height: 5),
            Divider(),
            SizedBox(height: 5),
            ContactPhone(),
            SizedBox(height: 5),
            Divider(),
          ],
        ),
      ),
    );
  }
}

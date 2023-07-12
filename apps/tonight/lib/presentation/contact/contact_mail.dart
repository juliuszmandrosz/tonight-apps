import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translations/translations.dart';

class ContactMail extends StatelessWidget {
  const ContactMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO - get from db
    const supportEmail = 'support@tonightapp.pl';
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: AutoSizeText(
        S().email,
        maxLines: 1,
        style: context.titleLarge,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: AutoSizeText(
          supportEmail,
          maxLines: 1,
          style: context.titleMedium.copyWith(color: context.secondaryColor),
        ),
      ),
      trailing: const FaIcon(FontAwesomeIcons.solidEnvelope),
      onTap: () => launchEmail(supportEmail),
    );
  }
}

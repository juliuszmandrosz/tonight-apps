import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight_partners/presentation/contact/widgets/contact_details_tile.dart';
import 'package:translations/raver_translations.dart';

class ContactMail extends StatelessWidget {
  const ContactMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContactDetailsTile(
      contactType: S().email,
      contactDetail: 'support@tonightapp.pl',
      trailingIcon: const FaIcon(FontAwesomeIcons.solidPaperPlane),
      onTap: () => launchEmail('support@tonightapp.pl'),
    );
  }
}

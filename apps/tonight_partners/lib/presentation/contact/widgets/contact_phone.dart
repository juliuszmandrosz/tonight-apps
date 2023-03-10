import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/presentation/contact/widgets/contact_details_tile.dart';
import 'package:raver_translations/raver_translations.dart';

class ContactPhone extends StatelessWidget {
  const ContactPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContactDetailsTile(
      contactType: S().phoneNumber,
      contactDetail: '+48 512 263 472',
      trailingIcon: const FaIcon(FontAwesomeIcons.phone),
      onTap: () async => await launchPhoneCall('+48512263472'),
    );
  }
}

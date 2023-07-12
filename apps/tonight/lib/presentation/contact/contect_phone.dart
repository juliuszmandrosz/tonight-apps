import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translations/translations.dart';

class ContactPhone extends StatelessWidget {
  const ContactPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO - get from db
    const supportPhoneNumber = '512263472';
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: AutoSizeText(
        S().phoneNumber,
        maxLines: 1,
        style: context.titleLarge,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: AutoSizeText(
          supportPhoneNumber,
          maxLines: 1,
          style: context.titleMedium.copyWith(color: context.secondaryColor),
        ),
      ),
      trailing: const FaIcon(FontAwesomeIcons.phone),
      onTap: () => launchPhoneCall(supportPhoneNumber),
    );
  }
}

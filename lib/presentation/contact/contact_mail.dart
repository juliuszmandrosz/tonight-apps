import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class ContactMail extends StatelessWidget {
  const ContactMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: AutoSizeText(
        S().email,
        maxLines: 1,
        style: context.headline6,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: AutoSizeText(
          'support@raverteam.io',
          maxLines: 1,
          style: context.subtitle1.copyWith(color: context.secondaryColor),
        ),
      ),
      trailing: const FaIcon(FontAwesomeIcons.solidPaperPlane),
      onTap: () => launchEmail('support@raverteam.io'),
    );
  }
}

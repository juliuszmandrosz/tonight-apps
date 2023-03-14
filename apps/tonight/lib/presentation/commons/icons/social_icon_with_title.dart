import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translations/translations.dart';

class SocialIconWithTitle extends StatelessWidget {
  const SocialIconWithTitle({
    Key? key,
    required this.url,
    required this.socialMedia,
  }) : super(key: key);

  final SocialMedia socialMedia;
  final String url;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      onTap: () async {
        final result = await launchURL(Uri.parse(url));
        if (result.isSome()) {
          context.showSnackbarMessage(S().errorOpeningLink);
        }
      },
      title: AutoSizeText(
        socialMedia.label,
        style: context.subtitle1.copyWith(color: context.secondaryColor),
        maxLines: 1,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TonightIconLink(
            url: url,
            icon: FaIcon(socialMedia.icon),
          ),
        ],
      ),
    );
  }
}

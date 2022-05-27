import 'package:flutter/material.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaverIconButton(
              onPressed: () async {
                final isFailure = await launchURL(Uri.parse(url));
                if (isFailure.isSome()) {
                  context.showSnackbarMessage(S().errorOpeningLink);
                }
              },
              icon: Icon(socialMedia.icon),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(socialMedia.label),
          ],
        )
      ],
    );
  }
}

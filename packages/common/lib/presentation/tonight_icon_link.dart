import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:translations/raver_translations.dart';

class TonightIconLink extends StatelessWidget {
  final String url;
  final Widget icon;

  const TonightIconLink({
    required this.url,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final result = await launchURL(Uri.parse(url));
        if (context.mounted && result.isSome()) {
          context.showSnackbarMessage(S().errorOpeningLink);
        }
      },
      icon: icon,
    );
  }
}

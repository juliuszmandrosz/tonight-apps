import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class RaverIconLink extends StatelessWidget {
  final String url;
  final Icon icon;

  const RaverIconLink({
    required this.url,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final result = await launchURL(url);
        if (result.isSome()) {
          context.showSnackbarMessage(S().errorOpeningLink);
        }
      },
      icon: icon,
    );
  }
}

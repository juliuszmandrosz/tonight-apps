import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

class TonightHyperLink extends StatelessWidget {
  final String url;
  final Text label;

  const TonightHyperLink({
    required this.url,
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final result = await launchURL(Uri.parse(url));
        if (context.mounted && result.isSome()) {
          context.showSnackbarMessage(S().errorOpeningLink);
        }
      },
      child: label,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class RaverHyperLink extends StatelessWidget {
  final String url;
  final Text label;

  const RaverHyperLink({
    required this.url,
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final result = await launchURL(Uri.parse(url));
        if (result.isSome()) {
          context.showSnackbarMessage(S().errorOpeningLink);
        }
      },
      child: label,
    );
  }
}

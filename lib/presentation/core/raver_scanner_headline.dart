import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RaverScannerHeadline extends StatelessWidget {
  final String text;

  const RaverScannerHeadline({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AutoSizeText(
      text,
      style: theme.textTheme.headline1,
      maxLines: 1,
    );
  }
}

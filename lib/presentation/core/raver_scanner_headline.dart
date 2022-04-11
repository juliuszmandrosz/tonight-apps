import 'package:flutter/material.dart';

class RaverScannerHeadline extends StatelessWidget {
  final String text;

  const RaverScannerHeadline({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      text,
      style: theme.textTheme.headline1,
    );
  }
}

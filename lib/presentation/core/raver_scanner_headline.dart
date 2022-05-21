import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';

class RaverScannerHeadline extends StatelessWidget {
  final String text;

  const RaverScannerHeadline({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: context.headline5,
      maxLines: 1,
    );
  }
}

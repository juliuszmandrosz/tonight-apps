import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';

class TonightScannerHeadline extends StatelessWidget {
  final String text;

  const TonightScannerHeadline({required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: context.headlineSmall,
      maxLines: 1,
    );
  }
}

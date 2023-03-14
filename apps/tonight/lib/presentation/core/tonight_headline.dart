import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';

class TonightHeadline extends StatelessWidget {
  final String text;
  final bool isSmallerVersion;

  const TonightHeadline({
    required this.text,
    this.isSmallerVersion = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: isSmallerVersion ? context.headline6 : context.headline5,
      maxLines: 1,
      textAlign: TextAlign.center,
    );
  }
}

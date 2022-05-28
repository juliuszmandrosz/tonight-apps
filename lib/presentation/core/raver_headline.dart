import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';

class RaverHeadline extends StatelessWidget {
  final String text;
  final bool isSmallerVersion;

  const RaverHeadline({
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

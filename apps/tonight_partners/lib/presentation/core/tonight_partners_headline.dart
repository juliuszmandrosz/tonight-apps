import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';

class TonightPartnersHeadline extends StatelessWidget {
  final String text;
  final Color? color;
  final bool isSmallerVersion;

  const TonightPartnersHeadline({
    required this.text,
    this.color,
    this.isSmallerVersion = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: isSmallerVersion
          ? context.titleLarge.copyWith(
              color: color ?? context.onSurfaceColor,
            )
          : context.headlineSmall.copyWith(
              color: color ?? context.onSurfaceColor,
            ),
      maxLines: 1,
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';

class RaverPartnersHeadline extends StatelessWidget {
  final String text;
  final Color? color;
  final bool isSmallerVersion;

  const RaverPartnersHeadline({
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
          ? context.headline6.copyWith(
              color: color ?? context.onSurfaceColor,
            )
          : context.headline5.copyWith(
              color: color ?? context.onSurfaceColor,
            ),
      maxLines: 1,
    );
  }
}

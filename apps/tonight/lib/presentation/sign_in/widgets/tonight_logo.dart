import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TonightLogo extends StatelessWidget {
  final double height;
  final bool isClassic;

  const TonightLogo({
    required this.height,
    this.isClassic = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      isClassic
          ? 'assets/icons/tonight_logo_transparent.svg'
          : 'assets/icons/neon_logo.svg',
      semanticsLabel: 'Tonight Logo',
      height: height,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TonightLogo extends StatelessWidget {
  final double height;

  const TonightLogo({
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/tonight_logo_transparent.svg',
      semanticsLabel: 'Tonight Logo',
      height: height,
    );
  }
}

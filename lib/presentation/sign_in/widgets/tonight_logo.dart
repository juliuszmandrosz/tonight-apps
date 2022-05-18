import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TonightLogo extends StatelessWidget {
  const TonightLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/logo.svg',
      semanticsLabel: 'Tonight Logo',
    );
  }
}

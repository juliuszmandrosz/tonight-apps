import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PartnersLogo extends StatelessWidget {
  const PartnersLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/partners_logo.svg',
      semanticsLabel: 'Tonight Logo',
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScannerLogo extends StatelessWidget {
  const ScannerLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/scanner_logo.svg',
      semanticsLabel: 'Scanner Logo',
    );
  }
}

import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/config/themes/dark_theme/typography_extensions.dart';

class RaverPartnersHeadline extends StatelessWidget {
  final String text;

  const RaverPartnersHeadline({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.headline5,
    );
  }
}

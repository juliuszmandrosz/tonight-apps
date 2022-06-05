import 'package:flutter/material.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_translations/raver_translations.dart';

class VipCheckoutHeader extends StatelessWidget {
  const VipCheckoutHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RaverHeadline(text: S().vip),
    );
  }
}

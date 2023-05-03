import 'package:flutter/material.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

class VipCheckoutHeader extends StatelessWidget {
  const VipCheckoutHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TonightHeadline(text: S().vip),
    );
  }
}

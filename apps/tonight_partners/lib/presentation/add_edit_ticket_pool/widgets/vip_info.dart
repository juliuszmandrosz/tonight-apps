import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:translations/raver_translations.dart';

class VipInfo extends StatelessWidget {
  const VipInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      S().vipInfo,
      maxLines: 1,
      style: context.bodyMedium.copyWith(color: context.secondaryColor),
      textAlign: TextAlign.center,
    );
  }
}

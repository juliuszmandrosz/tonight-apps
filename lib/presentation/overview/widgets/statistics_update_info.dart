import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class StatisticsUpdateInfo extends StatelessWidget {
  const StatisticsUpdateInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      S().statisticsUpdateInfo,
      maxLines: 2,
      style: context.bodyText2.copyWith(color: context.secondaryColor),
      textAlign: TextAlign.center,
    );
  }
}

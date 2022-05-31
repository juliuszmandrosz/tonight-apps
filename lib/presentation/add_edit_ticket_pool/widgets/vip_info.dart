import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class VipInfo extends StatelessWidget {
  const VipInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const FaIcon(
          FontAwesomeIcons.circleInfo,
          size: 16,
        ),
        const SizedBox(width: 8),
        Flexible(
          child: AutoSizeText(
            S().vipInfo,
            maxLines: 1,
            style: context.bodyText2,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

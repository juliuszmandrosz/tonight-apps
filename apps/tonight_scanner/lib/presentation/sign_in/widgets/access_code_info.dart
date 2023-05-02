import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translations/raver_translations.dart';

class AccessCodeInfo extends StatelessWidget {
  const AccessCodeInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const FaIcon(FontAwesomeIcons.circleInfo),
        const SizedBox(width: 20),
        Flexible(
          child: AutoSizeText(
            S().accessCodeInfo,
            maxLines: 2,
            style: context.bodyMedium.copyWith(color: context.secondaryColor),
          ),
        ),
      ],
    );
  }
}

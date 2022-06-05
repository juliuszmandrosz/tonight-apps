import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';

class DiscountsInfo extends StatelessWidget {
  const DiscountsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const FaIcon(FontAwesomeIcons.circleInfo),
        const SizedBox(width: 20),
        Flexible(
          child: AutoSizeText(
            // TODO - add translation
            'Zniżki naliczają się do łącznej sumy sprzedanych biletów oraz vipów na ekskluzywnych wydarzeniach',
            maxLines: 3,
            style: context.bodyText2.copyWith(color: context.secondaryColor),
          ),
        ),
      ],
    );
  }
}

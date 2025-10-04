import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TonightInfoRow extends StatelessWidget {
  final String info;
  final int maxLines;

  const TonightInfoRow({
    required this.info,
    this.maxLines = 2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(FontAwesomeIcons.circleInfo),
          ],
        ),
        const SizedBox(width: 15),
        Expanded(
          child: AutoSizeText(
            info,
            maxLines: maxLines,
            style: context.bodyMedium.copyWith(color: context.secondaryColor),
          ),
        ),
      ],
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';

class RaverInfoRow extends StatelessWidget {
  final String info;

  const RaverInfoRow({required this.info, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(FontAwesomeIcons.circleInfo),
          ],
        ),
        const SizedBox(width: 15),
        Expanded(
          child: AutoSizeText(
            info,
            maxLines: 2,
            style: context.bodyText2.copyWith(color: context.secondaryColor),
          ),
        ),
      ],
    );
  }
}

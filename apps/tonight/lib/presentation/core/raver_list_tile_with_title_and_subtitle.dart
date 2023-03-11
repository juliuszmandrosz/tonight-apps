import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';

class RaverListTileWithTitleAndSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const RaverListTileWithTitleAndSubtitle({
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: AutoSizeText(
        title,
        maxLines: 1,
        style: context.subtitle1,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: AutoSizeText(
          subtitle,
          maxLines: 3,
          style: context.bodyText2.copyWith(color: context.secondaryColor),
        ),
      ),
    );
  }
}

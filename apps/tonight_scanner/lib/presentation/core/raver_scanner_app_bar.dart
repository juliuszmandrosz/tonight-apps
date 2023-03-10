import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:raver_translations/raver_translations.dart';
import 'package:auto_size_text/auto_size_text.dart';

class RaverScannerAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;

  const RaverScannerAppBar({
    this.title,
    this.actions,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null && title!.isNotEmpty
          ? AutoSizeText(
        title!,
        maxLines: 1,
      ): Align(
        alignment: Alignment.centerLeft,
        child: SvgPicture.asset(
          'assets/icons/text_logo.svg',
          semanticsLabel: 'Tonight Scanner Logo',
          alignment: Alignment.centerLeft,
          height: kToolbarHeight * 2.5,
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

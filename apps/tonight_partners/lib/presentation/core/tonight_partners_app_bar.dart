import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TonightPartnersAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;

  const TonightPartnersAppBar({this.title, this.actions, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null && title!.isNotEmpty
          ? AutoSizeText(
              title!,
              maxLines: 1,
            )
          : SvgPicture.asset(
              'assets/icons/text_logo.svg',
              semanticsLabel: 'Tonight Partners Logo',
              height: kToolbarHeight * 2.5,
            ),
      actions: actions,
      centerTitle: title == null || title!.isEmpty,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

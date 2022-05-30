import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RaverAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;

  const RaverAppBar({this.title, this.actions, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null && title!.isNotEmpty
          ? Text(title!)
          : Align(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(
                'assets/icons/text_logo.svg',
                semanticsLabel: 'Tonight Logo',
                alignment: Alignment.centerLeft,
                height: kToolbarHeight * 1.5,
              ),
            ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

import 'package:flutter/material.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver/presentation/commons/utils/url_utils.dart';

class SocialIconWithTitle extends StatelessWidget {
  const SocialIconWithTitle(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.url})
      : super(key: key);

  final IconData iconData;
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaverIconButton(
              onPressed: () {
                launchURL(url);
              },
              icon: Icon(iconData),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
          ],
        )
      ],
    );
  }
}

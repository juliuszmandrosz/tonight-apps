import 'package:common/common.dart';
import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final Widget icon;
  final String url;

  const SocialMediaButton({
    required this.icon,
    required this.url,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.surfaceColor,
      ),
      child: TonightIconLink(
        icon: icon,
        url: url,
      ),
    );
  }
}

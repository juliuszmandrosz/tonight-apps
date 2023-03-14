import 'package:common/common.dart';
import 'package:flutter/material.dart';

class SocialMediaDrawerButton extends StatelessWidget {
  final Widget icon;
  final String url;

  const SocialMediaDrawerButton({
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
        color: context.surfaceVariantColor,
      ),
      child: TonightIconLink(
        icon: icon,
        url: url,
      ),
    );
  }
}

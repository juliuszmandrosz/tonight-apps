import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:common/common.dart';

class TikTokButton extends StatelessWidget {
  const TikTokButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SocialMediaButton(
      icon: FaIcon(FontAwesomeIcons.tiktok),
      url: 'https://www.tiktok.com/@tonightapp',
    );
  }
}

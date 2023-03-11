import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';

class InstagramButton extends StatelessWidget {
  const InstagramButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SocialMediaButton(
      icon: FaIcon(FontAwesomeIcons.instagram),
      url: 'https://www.instagram.com/tonightraver',
    );
  }
}

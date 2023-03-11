import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_partners/presentation/drawer/social_media/social_media_drawer_button.dart';

class InstagramButton extends StatelessWidget {
  const InstagramButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SocialMediaDrawerButton(
      icon: FaIcon(FontAwesomeIcons.instagram),
      url: 'https://www.instagram.com/tonightraver',
    );
  }
}

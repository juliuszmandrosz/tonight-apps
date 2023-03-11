import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SocialMediaButton(
      icon: FaIcon(FontAwesomeIcons.facebookF),
      url: 'https://www.facebook.com/tonightraver',
    );
  }
}

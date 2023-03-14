import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LinkedInButton extends StatelessWidget {
  const LinkedInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SocialMediaButton(
      icon: FaIcon(FontAwesomeIcons.linkedinIn),
      url: 'https://www.linkedin.com/company/tonight-org',
    );
  }
}

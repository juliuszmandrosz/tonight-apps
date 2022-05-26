import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_partners/presentation/settings/widgets/social_media/social_media_button.dart';

class LinkedInButton extends StatelessWidget {
  const LinkedInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SocialMediaButton(
      icon: FaIcon(FontAwesomeIcons.linkedinIn),
      url: 'https://www.linkedin.com/company/raver-org',
    );
  }
}

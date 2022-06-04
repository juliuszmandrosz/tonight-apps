import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/drawer/social_media/facebook_button.dart';
import 'package:raver_partners/presentation/drawer/social_media/instagram_button.dart';
import 'package:raver_partners/presentation/drawer/social_media/linked_in_button.dart';
import 'package:raver_partners/presentation/drawer/social_media/tik_tok_button.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({Key? key}) : super(key: key);

  final socialMedia = const [
    FacebookButton(),
    InstagramButton(),
    TikTokButton(),
    LinkedInButton(),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: socialMedia,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:raver/presentation/profile/widgets/social_media/facebook_button.dart';
import 'package:raver/presentation/profile/widgets/social_media/instagram_button.dart';
import 'package:raver/presentation/profile/widgets/social_media/linked_in_button.dart';
import 'package:raver/presentation/profile/widgets/social_media/tik_tok_button.dart';

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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: socialMedia,
    );
  }
}

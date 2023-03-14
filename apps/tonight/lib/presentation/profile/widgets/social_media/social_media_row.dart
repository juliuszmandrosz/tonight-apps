import 'package:flutter/material.dart';
import 'package:tonight/presentation/profile/widgets/social_media/facebook_button.dart';
import 'package:tonight/presentation/profile/widgets/social_media/instagram_button.dart';
import 'package:tonight/presentation/profile/widgets/social_media/tik_tok_button.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({Key? key}) : super(key: key);

  final socialMedia = const [
    FacebookButton(),
    InstagramButton(),
    TikTokButton(),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: socialMedia,
    );
  }
}

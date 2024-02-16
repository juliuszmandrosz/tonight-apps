import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClubSocialMediaRow extends StatelessWidget {
  final Map<String, String> socialMedia;

  const ClubSocialMediaRow({
    required this.socialMedia,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (var medium in socialMedia.entries.where(
            (e) => socialMediaMap.containsKey(e.key) && e.value.isNotEmpty))
          SocialMediaButton(
            icon: FaIcon(socialMediaMap[medium.key]!.icon),
            url: medium.value,
          )
      ],
    );
  }
}

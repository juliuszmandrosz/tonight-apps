import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:common/common.dart';

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
            (e) => clubSocialMedia.containsKey(e.key) && e.value.isNotEmpty))
          SocialMediaButton(
            icon: FaIcon(clubSocialMedia[medium.key]!.icon),
            url: medium.value,
          )
      ],
    );
  }
}

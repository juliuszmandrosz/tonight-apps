import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsSocialMediaRow extends StatelessWidget {
  final List<SocialMedia> socialMedia;

  const DetailsSocialMediaRow({
    required this.socialMedia,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (var medium in socialMedia.where((e) => e.url.isNotEmpty))
          SocialMediaButton(
            icon: FaIcon(medium.icon),
            url: medium.url,
          )
      ],
    );
  }
}

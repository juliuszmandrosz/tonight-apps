import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';

import 'circle_social_media.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleSocialMedia(
          raverIcon: RaverIconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.globe),
          ),
        ),
        CircleSocialMedia(
          raverIcon: RaverIconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.facebook),
          ),
        ),
        CircleSocialMedia(
          raverIcon: RaverIconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.instagram),
          ),
        ),
      ],
    );
  }
}

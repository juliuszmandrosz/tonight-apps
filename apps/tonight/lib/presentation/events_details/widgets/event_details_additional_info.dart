import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/commons/icons/social_icon_with_title.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/raver_translations.dart';

class EventDetailsAdditionalInfo extends StatelessWidget {
  final Event event;

  const EventDetailsAdditionalInfo({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final socialMediaIcons = event.urlLinks.entries
        .where(
          (element) =>
              eventSocialMedia.containsKey(element.key) &&
              element.value.isNotEmpty,
        )
        .toList();

    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TonightHeadline(
            text: S().urlLinks,
            isSmallerVersion: true,
          ),
        ),
        const SizedBox(height: 5),
        if (socialMediaIcons.isNotEmpty)
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: socialMediaIcons.length + 1,
            separatorBuilder: (context, i) => const Divider(),
            itemBuilder: (context, i) => i >= socialMediaIcons.length
                ? const SizedBox()
                : SocialIconWithTitle(
                    socialMedia: eventSocialMedia[socialMediaIcons[i].key]!,
                    url: socialMediaIcons[i].value,
                  ),
          ),
        const SizedBox(height: 10),
      ],
    );
  }
}

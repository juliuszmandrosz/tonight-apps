import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/commons/icons/social_icon_with_title.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

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

    return socialMediaIcons.isEmpty
        ? const SizedBox.shrink()
        : Column(
            children: [
              const SizedBox(height: 12),
              const Divider(thickness: .420),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: TonightHeadline(
                  text: S().urlLinks,
                  isSmallerVersion: true,
                ),
              ),
              const SizedBox(height: 8),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: socialMediaIcons.length + 1,
                separatorBuilder: (context, i) =>
                    i == socialMediaIcons.length - 1
                        ? const SizedBox.shrink()
                        : const SizedBox(height: 5),
                itemBuilder: (context, i) => i >= socialMediaIcons.length
                    ? const SizedBox()
                    : SocialIconWithTitle(
                        socialMedia: eventSocialMedia[socialMediaIcons[i].key]!,
                        url: socialMediaIcons[i].value,
                      ),
              ),
            ],
          );
  }
}

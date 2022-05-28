import 'package:flutter/material.dart';
import 'package:raver/presentation/commons/icons/social_icon_with_title.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

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
        ? const SizedBox()
        : Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: RaverHeadline(
                  text: S().urlLinks,
                  isSmallerVersion: true,
                ),
              ),
              const SizedBox(height: 10),
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
              const SizedBox(height: 20),
            ],
          );
  }
}

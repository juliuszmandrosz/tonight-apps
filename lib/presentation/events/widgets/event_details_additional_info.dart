import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/domain/events/event_entity.dart';
import 'package:raver/presentation/commons/utils/url_utils.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/core/social_media_icons.dart';

class EventDetailsAdditionalInfo extends StatelessWidget {
  final Event event;

  final urlLinksDescription = {
    'Facebook': 'Facebook event',
    'DjChannel': 'Dj Channel',
  };

  EventDetailsAdditionalInfo({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Additional info',
              style: textTheme.headline1,
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          for (final url in event.urlLinks.entries.where(
                (url) => socialMediaIcons.containsKey(url.key),
          ))
            Column(
              children: [
                IconButton(
                  icon: FaIcon(
                    socialMediaIcons[url.key],
                    size: 30,
                    color: DefaultColors.primaryColor,
                  ),
                  onPressed: () async {
                    final result = await launchURL(url.value);
                    if (result.isSome()) {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          const SnackBar(content: Text('Error opening link')),
                        );
                    }
                  },
                ),
                const SizedBox(height: 10),
                Text(
                  urlLinksDescription[url.key]!,
                  style: textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
        ])
      ],
    );
  }
}

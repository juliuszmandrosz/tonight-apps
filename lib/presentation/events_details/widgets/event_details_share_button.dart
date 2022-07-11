import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_events/raver_events.dart';
import 'package:share_plus/share_plus.dart';

class EventDetailsShareButton extends StatelessWidget {
  final Event event;

  const EventDetailsShareButton({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final dynamicLinkParams = DynamicLinkParameters(
          link: Uri.parse(
            'https://tonightraver.page.link/events?eventId=${event.id}',
          ),
          uriPrefix: 'https://tonightraver.page.link',
          androidParameters:
              const AndroidParameters(packageName: 'com.raverteam.tonight'),
          iosParameters: const IOSParameters(bundleId: 'com.raverteam.tonight'),
        );
        final link = await FirebaseDynamicLinks.instance.buildShortLink(
          dynamicLinkParams,
          shortLinkType: ShortDynamicLinkType.unguessable,
        );

        Share.share('${link.shortUrl}');
      },
      icon: const FaIcon(FontAwesomeIcons.share),
    );
  }
}

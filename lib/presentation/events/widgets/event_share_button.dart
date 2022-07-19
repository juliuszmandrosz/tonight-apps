import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:raver_common/constants/env_keys.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:share_plus/share_plus.dart';

class EventShareButton extends StatefulWidget {
  final Event event;

  const EventShareButton({required this.event, Key? key}) : super(key: key);

  @override
  _EventShareButtonState createState() => _EventShareButtonState();
}

class _EventShareButtonState extends State<EventShareButton> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    const tonightAppStoreId = '1629723394';
    const tonightAppUrl = 'https://tonightapp.pl';
    const tonightPackageName = 'com.raverteam.tonight';
    return IconButton(
      onPressed: () async {
        final path = 'events?eventId=${widget.event.id}';
        final link = '${dotenv.get(dynamicLinkUrl)}/$path';
        final dynamicLinkParams = DynamicLinkParameters(
          link: Uri.parse(link),
          uriPrefix: dotenv.get(dynamicLinkUrl),
          androidParameters: AndroidParameters(
            packageName: tonightPackageName,
            fallbackUrl: Uri.parse(tonightAppUrl),
            minimumVersion: 1,
          ),
          iosParameters: IOSParameters(
            bundleId: tonightPackageName,
            appStoreId: tonightAppStoreId,
            fallbackUrl: Uri.parse(tonightAppUrl),
            minimumVersion: '1',
          ),
        );

        setState(() {
          _isLoading = true;
        });

        final shortLink = await FirebaseDynamicLinks.instance.buildShortLink(
          dynamicLinkParams,
        );

        setState(() {
          _isLoading = false;
        });

        Share.share(shortLink.shortUrl.toString());
      },
      icon: _isLoading
          ? SizedBox(
              height: 24,
              width: 24,
              child: SpinKitThreeBounce(
                color: context.onSurfaceColor,
                size: 16,
              ),
            )
          : const SizedBox(
              height: 24,
              width: 24,
              child: Icon(Icons.share),
            ),
    );
  }
}

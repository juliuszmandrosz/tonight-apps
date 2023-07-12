import 'package:common/common.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tonight/application/core/tonight_constants.dart';

class EventDetailsBottomBarShare extends StatefulWidget {
  final Event event;

  const EventDetailsBottomBarShare({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  State<EventDetailsBottomBarShare> createState() =>
      _EventDetailsBottomBarShareState();
}

class _EventDetailsBottomBarShareState
    extends State<EventDetailsBottomBarShare> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      child: _isLoading
          ? const CircleLoadingIndicator(size: 24)
          : IconButton(
              icon: const FaIcon(FontAwesomeIcons.shareNodes),
              onPressed: _shareEvent,
            ),
    );
  }

  _shareEvent() async {
    if (_isLoading) return;
    setState(() {
      _isLoading = true;
    });
    final sharePath = 'events?eventId=${widget.event.id}';
    final link = '${dotenv.get(dynamicLinkUrl)}/$sharePath';
    final dynamicLinkParams = DynamicLinkParameters(
      link: Uri.parse(link),
      uriPrefix: dotenv.get(dynamicLinkUrl),
      androidParameters: AndroidParameters(
        packageName: kPackageName,
        fallbackUrl: Uri.parse(kTonightAppUrl),
        minimumVersion: 1,
      ),
      iosParameters: IOSParameters(
        bundleId: kPackageName,
        appStoreId: kAppStoreId,
        fallbackUrl: Uri.parse(kTonightAppUrl),
        minimumVersion: '1',
      ),
    );
    final shortLink = await FirebaseDynamicLinks.instance.buildShortLink(
      dynamicLinkParams,
    );
    setState(() {
      _isLoading = false;
    });
    Share.share(shortLink.shortUrl.toString());
  }

// _shareEvent2() async {
//   if (_isLoading) return;
//   setState(() {
//     _isLoading = true;
//   });
//
//   final linkUrl = dotenv.get(dynamicLinkUrl);
//   final eventId = widget.event.id;
//   final link = '$linkUrl/events?eventId=$eventId';
//   final dynamicLink = Uri.parse('$linkUrl/?'
//       'link=${Uri.encodeComponent(link)}&'
//       'apn=$kPackageName&'
//       'ibi=$kPackageName&'
//       'isi=$kAppStoreId&'
//       'ofl=$kTonightAppUrl');
//
//   setState(() {
//     _isLoading = false;
//   });
//   Share.share(dynamicLink.toString());
// }
}

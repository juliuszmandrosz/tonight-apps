import 'package:common/constants/env_keys.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tonight/application/core/tonight_constants.dart';

Future<String> buildDynamicLink(String sharePath) async {
  final linkUrl = dotenv.get(dynamicLinkUrl);
  final dynamicLink = "$linkUrl/?"
      "link=${Uri.encodeFull('$linkUrl/$sharePath')}"
      "&apn=$kPackageName"
      "&afl=$kTonightAppUrl"
      "&ibi=$kPackageName"
      "&isi=$kAppStoreId"
      "&ifl=$kTonightAppUrl"
      "&ofl=$kTonightAppUrl";
  final dynamicLinkParams = DynamicLinkParameters(
    link: Uri.parse(dynamicLink),
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
  final shortLink =
      await FirebaseDynamicLinks.instance.buildShortLink(dynamicLinkParams);
  return shortLink.shortUrl.toString();
}

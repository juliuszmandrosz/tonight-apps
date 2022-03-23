import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/utils/url_launch_failure.dart';
import 'package:url_launcher/url_launcher.dart';

Future<Option<UrlLaunchFailure>> launchURL(String rawUrl) async {
  final logger = Logger();
  final url = buildUrl(rawUrl);
  try {
    final result = await launch(url);
    if (!result) {
      logger.e('Could not launch $url');
      return const Some(UrlLaunchFailure.launchError());
    }
  } on PlatformException catch (e) {
    logger.e('Exception during url launching URL: $url, EXCEPTION: $e');
    return const Some(UrlLaunchFailure.launchError());
  }
  return const None();
}

Future<Option> launchPhoneCall(String phoneNumber) {
  final launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  return launchURL(launchUri.toString());
}

//TODO: Check that on iOS device
//Maybe change that to in-app map
Future<Option> launchGoogleMaps(double lat, double lng) {
  final url = Platform.isIOS
      ? 'https://maps.apple.com/?q=$lat,$lng'
      : 'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
  return launchURL(url);
}

String buildUrl(String url) {
  const httpsPhrase = 'https://';
  if (url.substring(0, 8) != httpsPhrase) {
    if (url.substring(0, 7) == 'http://') {
      return httpsPhrase + url.substring(7);
    }
    return httpsPhrase + url;
  }
  return url;
}

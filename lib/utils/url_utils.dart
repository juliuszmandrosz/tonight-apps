import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/utils/url_launch_failure.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

Future<Option<UrlLaunchFailure>> launchURL(String rawUrl) async {
  final logger = Logger();
  final uri = buildUri(rawUrl);
  try {
    final result = await launcher.launchUrl(uri);
    if (!result) {
      logger.e('Could not launch $uri');
      return const Some(UrlLaunchFailure.launchError());
    }
  } on PlatformException catch (e) {
    logger.e('Exception during url launching URL: $uri, EXCEPTION: $e');
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

Future<Option> launchEmail(String email) {
  final launchUri = Uri(
    scheme: 'mailto',
    path: email,
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

Uri buildUri(String url) {
  var result = Uri.parse(url);
  const httpsPhrase = 'https://';
  if (url.substring(0, 8) != httpsPhrase) {
    if (url.substring(0, 7) == 'http://') {
      return Uri.parse('$httpsPhrase${url.substring(7)}');
    }
    return Uri.parse('$httpsPhrase$url');
  }
  return result;
}

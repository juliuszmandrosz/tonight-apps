import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/utils/url_launch_failure.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

Future<Option<UrlLaunchFailure>> launchURL(Uri uri) async {
  final logger = Logger();
  try {
    final result = await launcher.launchUrl(
      uri,
      mode: launcher.LaunchMode.externalApplication,
    );
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
  return launchURL(launchUri);
}

Future<Option> launchEmail(String email) async {
  final launchUri = Uri(
    scheme: 'mailto',
    path: email,
  );
  return launchURL(launchUri);
}

//TODO: Check that on iOS device
//Maybe change that to in-app map
Future<Option> launchGoogleMaps(double lat, double lng) {
  final url = Platform.isIOS
      ? 'https://maps.apple.com/?q=$lat,$lng'
      : 'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
  return launchURL(Uri.parse(url));
}

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:raver/presentation/commons/utils/url_launch_failure.dart';
import 'package:url_launcher/url_launcher.dart';

Future<Either<UrlLaunchFailure, void>> launchURL(String url) async {
  final logger = Logger();
  if (!await launch(url)) {
    logger.e('Could not launch $url');
    return left(const UrlLaunchFailure.launchError());
  }
  return right(null);
}

Future<Either<UrlLaunchFailure, void>> launchPhoneCall(String phoneNumber) {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  return launchURL(launchUri.toString());
}

//TODO: Check that on iOS device
//Maybe change that to in-app map
Future<Either<UrlLaunchFailure, void>> launchGoogleMaps(
    double lat, double lng) {
  String url = Platform.isIOS
      ? 'https://maps.apple.com/?q=$lat,$lng'
      : 'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
  final launchUri = Uri.parse(url);
  return launchURL(launchUri.toString());
}

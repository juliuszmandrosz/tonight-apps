import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}

void launchPhoneCall(String phoneNumber) {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  launchURL(launchUri.toString());
}

//TODO: Check that on iOS device
//Maybe change that to in-app map
void launchGoogleMaps(double lat, double lng) {
  String url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
  if (Platform.isIOS) {
    url = 'https://maps.apple.com/?q=$lat,$lng';
  }
  final Uri launchUri = Uri.parse(url);
  launchURL(launchUri.toString());
}

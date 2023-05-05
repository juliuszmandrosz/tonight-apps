import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageViewModel onboardingPageView({
  required BuildContext context,
  required IconData icon,
  required String title,
  required String body,
}) {
  return PageViewModel(
    titleWidget: Text(
      title,
      style: context.headlineSmall,
      textAlign: TextAlign.center,
    ),
    bodyWidget: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        body,
        style: context.titleMedium.copyWith(color: context.secondaryColor),
        textAlign: TextAlign.center,
      ),
    ),
    image: Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Center(
        child: FaIcon(
          icon,
          size: 150,
        ),
      ),
    ),
  );
}

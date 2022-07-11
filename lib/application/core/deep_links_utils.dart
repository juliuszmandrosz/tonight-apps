import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/routes/app_router.dart';

handleDeepLink(BuildContext context, Map<String, dynamic>? data) {
  if (data == null) return;

  final eventId = data['eventId'];

  if (eventId != null) {
    context.router.replaceAll(
      [
        const WelcomeLoaderRoute(),
        EventDetailsRoute(eventId: eventId),
      ],
    );
    return;
  }

  final clubId = data['clubId'];

  if (clubId != null) {
    context.router.replaceAll(
      [
        const WelcomeLoaderRoute(),
        ClubDetailsRoute(clubId: clubId),
      ],
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/routes/app_router.dart';

handlePushNotification(BuildContext context, Map<String, dynamic> data) {
  final eventId = data['eventId'];

  if (eventId != null) {
    context.pushRoute(EventDetailsRoute(eventId: eventId));
    return;
  }

  final clubId = data['clubId'];

  if (clubId != null) {
    context.pushRoute(ClubDetailsRoute(clubId: clubId));
  }
}

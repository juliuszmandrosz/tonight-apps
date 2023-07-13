import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

Future<void> handleDynamicLink(
  BuildContext context,
  Map<String, dynamic>? data,
) async {
  if (data == null) return;

  final eventId = _extractEventId(data);

  if (eventId != null) {
    context.router.popUntilRoot();
    await context.router.replaceAll(
      [
        const WelcomeLoaderRoute(),
        EventDetailsRoute(eventId: eventId),
      ],
    );
    return;
  }
}

String? _extractEventId(Map<String, dynamic> data) {
  try {
    final link = data['link'];
    if (link == null) return null;
    final uri = Uri.parse(link);
    final eventId = uri.queryParameters['eventId'];
    return eventId;
  } catch (_) {
    return null;
  }
}

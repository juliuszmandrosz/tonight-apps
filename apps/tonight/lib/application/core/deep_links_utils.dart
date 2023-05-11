import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/extensions/build_context_extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:events/infrastructure/events/dtos/event_dto.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

Future<void> handleDeepLink(
  BuildContext context,
  Map<String, dynamic>? data,
) async {
  if (data == null) return;

  final eventId = data['eventId'];

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

  final clubId = data['clubId'];

  if (clubId != null) {
    context.router.popUntilRoot();
    await context.router.replaceAll(
      [
        const WelcomeLoaderRoute(),
        ClubDetailsRoute(clubId: clubId),
      ],
    );
    return;
  }

  final eventToRateId = data['eventToRateId'];

  if (eventToRateId != null) {
    context.router.popUntilRoot();
    await context.router.replaceAll(
      [
        const WelcomeLoaderRoute(),
        ReviewRoute(eventId: eventToRateId),
      ],
    );
    return;
  }

  final taskId = data['taskId'];

  await handleTimeTask(taskId: taskId, context: context);
}

// TODO - refactor
Future<void> handleTimeTask({
  required String taskId,
  required BuildContext context,
}) async {
  final task =
      await FirebaseFirestore.instance.collection('tasks').doc(taskId).get();

  if (!task.exists) return;

  if (context.mounted) {
    final data = task.data() as Map<String, dynamic>;
    final eventId = data['eventId'] as String;
    final createdAt = data['createdAt'] as Timestamp;
    final duration = data['durationInMinutes'] as int;
    final durationInMilliseconds = duration * 60 * 1000;
    final now = DateTime.now();
    final diff = now.difference(createdAt.toDate()).inMilliseconds;
    if (diff > durationInMilliseconds) {
      context.showSnackbarMessage('${S().timeTaskExpired} 😉');
      return;
    }

    final event = await FirebaseFirestore.instance
        .collection('events')
        .doc(eventId)
        .get();

    if (context.mounted) {
      final task = TimeTask(
        id: taskId,
        eventId: eventId,
        createdAt: createdAt,
        durationInMinutes: duration,
      );
      context.router.popUntilRoot();
      await context.router.replaceAll(
        [
          const WelcomeLoaderRoute(),
          WallPhotoCameraPreviewRoute(
            event: some(EventDto.fromFirebase(event).toDomain()),
            timeTask: some(task),
          ),
        ],
      );
    }
  }
}

class TimeTask extends Equatable {
  final String id;
  final String eventId;
  final Timestamp createdAt;
  final int durationInMinutes;

  const TimeTask({
    required this.id,
    required this.eventId,
    required this.createdAt,
    required this.durationInMinutes,
  });

  @override
  List<Object?> get props => [
        id,
        eventId,
        createdAt,
        durationInMinutes,
      ];
}

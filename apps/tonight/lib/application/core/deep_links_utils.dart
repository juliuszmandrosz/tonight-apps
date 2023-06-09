import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/build_context_extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/domain/time_tasks/time_task_facade.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/utils/show_confirm_phone_number_dialog.dart';
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

  if (taskId != null) {
    await handleTimeTask(taskId: taskId, context: context);
  }
}

Future<void> handleTimeTask({
  required String taskId,
  required BuildContext context,
}) async {
  final timeTaskFacade = getIt<TimeTaskFacade>();
  final timeTaskResult = await timeTaskFacade.getTimeTaskById(taskId);

  timeTaskResult.fold(
    (failure) => failure.map(
      unexpected: (_) => context.showSnackbarMessage(S().serverError),
      taskNotExists: (_) => context.showSnackbarMessage(S().taskNotExists),
      timeTaskExpired: (_) =>
          context.showSnackbarMessage('${S().timeTaskExpired} 😉'),
      timeTaskLimitReached: (_) =>
          context.showSnackbarMessage('${S().timeTaskLimitReached} 😉'),
    ),
    (task) async {
      if (!context.read<AuthCubit>().checkIfPhoneNumberIsVerified()) {
        final isPhoneNumberVerified =
            await showConfirmPhoneNumberDialog(context);
        if (!isPhoneNumberVerified) {
          return;
        }
      }

      final eventFacade = getIt<UserEventFacade>();

      final eventResult = await eventFacade.getEventById(task.eventId);

      eventResult.fold(
        (_) => context.showSnackbarMessage(S().serverError),
        (event) async {
          context.router.popUntilRoot();
          await context.router.replaceAll(
            [
              const WelcomeLoaderRoute(),
              WallPhotoCameraPreviewRoute(
                event: some(event),
                timeTask: some(task),
              ),
            ],
          );
        },
      );
    },
  );
}

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/send_time_task/send_time_task_cubit.dart';
import 'package:tonight_partners/injection.dart';
import 'package:tonight_partners/presentation/core/tonight_partners_app_bar.dart';
import 'package:tonight_partners/presentation/send_time_task/widgets/send_time_task_button.dart';
import 'package:tonight_partners/presentation/send_time_task/widgets/time_task_description_en_input.dart';
import 'package:tonight_partners/presentation/send_time_task/widgets/time_task_description_pl_input.dart';
import 'package:tonight_partners/presentation/send_time_task/widgets/time_task_duration_in_minutes_input.dart';

class SendTimeTaskPage extends StatelessWidget {
  final Event event;

  const SendTimeTaskPage({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SendTimeTaskCubit>(),
      child: BlocListener<SendTimeTaskCubit, SendTimeTaskState>(
        listenWhen: (p, c) =>
            p.snackbarMessage != c.snackbarMessage || p.status != c.status,
        listener: (context, state) {
          state.snackbarMessage.fold(
            () {},
            (message) => context.showSnackbarMessage(message),
          );

          if (state.status.isSuccess()) {
            context.popRoute();
          }
        },
        child: Scaffold(
          appBar: const TonightPartnersAppBar(title: 'Wyślij zadanie'),
          floatingActionButton: SendTimeTaskButton(event: event),
          body: const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TimeTaskDescriptionPlInput(),
                SizedBox(height: 20),
                TimeTaskDescriptionEnInput(),
                SizedBox(height: 20),
                TimeTaskDurationInMinutesInput(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

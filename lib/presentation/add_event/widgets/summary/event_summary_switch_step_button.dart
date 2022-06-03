import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';

class EventSummarySwitchStepButton extends StatelessWidget {
  final AddEventStep step;

  const EventSummarySwitchStepButton({required this.step, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: const Icon(Icons.mode_edit),
      onPressed: () => _switchStep(context),
    );
  }

  _switchStep(BuildContext context) {
    switch (step) {
      case AddEventStep.concertInfo:
        context.read<AddEventCubit>().switchStep(AddEventStep.concertInfo);
        break;

      case AddEventStep.nameAndDesc:
        context.read<AddEventCubit>().switchStep(AddEventStep.nameAndDesc);
        break;

      case AddEventStep.details:
        context.read<AddEventCubit>().switchStep(AddEventStep.details);
        break;

      case AddEventStep.urlLinks:
        context.read<AddEventCubit>().switchStep(AddEventStep.urlLinks);
        break;

      case AddEventStep.tickets:
        context.read<AddEventCubit>().switchStep(AddEventStep.tickets);
        break;

      case AddEventStep.dateTime:
        context.read<AddEventCubit>().switchStep(AddEventStep.dateTime);
        break;

      case AddEventStep.photo:
        context.read<AddEventCubit>().switchStep(AddEventStep.photo);
        break;

      case AddEventStep.cost:
        context.read<AddEventCubit>().switchStep(AddEventStep.cost);
        break;

      case AddEventStep.summary:
        break;
    }
  }
}

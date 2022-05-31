import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/steps/event_photo_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/steps/event_summary_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/steps/event_url_links_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/steps/event_concert_info_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/steps/event_date_time_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/steps/event_name_and_desc_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/steps/event_details_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/steps/event_tickets_step.dart';

class EventStepContent extends StatelessWidget {
  const EventStepContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.currentStep != current.currentStep,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: _getStepContent(state.currentStep),
        );
      },
    );
  }

  _getStepContent(AddEventStep currentStep) {
    switch (currentStep) {
      case AddEventStep.nameAndDesc:
        return const EventDescriptionStep();

      case AddEventStep.dateTime:
        return const EventDateTimeStep();

      case AddEventStep.details:
        return const EventDetailsStep();

      case AddEventStep.tickets:
        return const EventTicketsStep();

      case AddEventStep.photo:
        return const EventPhotoStep();

      case AddEventStep.concertInfo:
        return const EventConcertInfoStep();

      case AddEventStep.urlLinks:
        return const EventUrlLinksStep();

      case AddEventStep.summary:
        return const EventSummaryStep();

      default:
        return Container();
    }
  }
}

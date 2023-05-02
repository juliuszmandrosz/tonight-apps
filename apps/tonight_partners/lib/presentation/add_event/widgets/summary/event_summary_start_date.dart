import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/application/add_event/add_event_step.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_list_tile.dart';
import 'package:translations/raver_translations.dart';

class EventSummaryStartDate extends StatelessWidget {
  const EventSummaryStartDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.startDateTime != current.startDateTime,
      builder: (context, state) {
        return EventSummaryListTile(
          title: S().startDate,
          subtitle: Text(
            context.formatDateTimeToLocaleYMDHM(state.startDateTime.value!),
            style: context.titleMedium.copyWith(color: context.secondaryColor),
          ),
          step: AddEventStep.dateTime,
        );
      },
    );
  }
}

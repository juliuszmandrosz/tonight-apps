import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_switch_step_button.dart';
import 'package:raver_partners/presentation/core/raver_partners_headline.dart';
import 'package:raver_translations/raver_translations.dart';

class EventSummaryEndDate extends StatelessWidget {
  const EventSummaryEndDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.endDateTime != current.endDateTime,
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                RaverPartnersHeadline(text: S().endDate),
                const SizedBox(width: 20),
                const EventSummarySwitchStepButton(step: AddEventStep.dateTime),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  context
                      .formatDateTimeToLocaleYMDHM(state.startDateTime.value!),
                  style: theme.textTheme.subtitle1,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

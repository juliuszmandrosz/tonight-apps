import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_switch_step_button.dart';
import 'package:raver_partners/presentation/core/raver_partners_headline.dart';
import 'package:raver_translations/generated/l10n.dart';

class EventSummaryMinimumAge extends StatelessWidget {
  const EventSummaryMinimumAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) => previous.minAge != current.minAge,
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaverPartnersHeadline(text: S().minAge),
                const EventSummarySwitchStepButton(step: AddEventStep.details),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                  '${state.minAge.value}+',
                  style: context.subtitle1,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

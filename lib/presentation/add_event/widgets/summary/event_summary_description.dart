import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_switch_step_button.dart';
import 'package:raver_partners/presentation/core/raver_partners_headline.dart';
import 'package:raver_translations/generated/l10n.dart';

class EventSummaryDescription extends StatelessWidget {
  const EventSummaryDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.description != current.description,
      builder: (context, state) {
        return state.description.value.isNotEmpty
            ? Column(
                children: [
                  Row(
                    children: [
                      RaverPartnersHeadline(text: S().description),
                      const SizedBox(width: 20),
                      const EventSummarySwitchStepButton(
                        step: AddEventStep.nameAndDesc,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      state.description.value,
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              )
            : Container();
      },
    );
  }
}

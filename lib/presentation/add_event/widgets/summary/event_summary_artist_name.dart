import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_switch_step_button.dart';
import 'package:raver_partners/presentation/core/raver_partners_headline.dart';
import 'package:raver_translations/raver_translations.dart';

class EventSummaryArtistName extends StatelessWidget {
  const EventSummaryArtistName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.artistName != current.artistName ||
          previous.isConcert != current.isConcert,
      builder: (context, state) {
        return state.isConcert
            ? Column(
                children: [
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaverPartnersHeadline(text: S().artistName),
                      const EventSummarySwitchStepButton(
                        step: AddEventStep.concertInfo,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          state.artistName.value,
                          style: context.subtitle1,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : Container();
      },
    );
  }
}

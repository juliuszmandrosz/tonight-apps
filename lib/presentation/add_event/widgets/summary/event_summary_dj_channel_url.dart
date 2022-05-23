import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_switch_step_button.dart';
import 'package:raver_partners/presentation/core/raver_partners_headline.dart';
import 'package:raver_translations/raver_translations.dart';

class EventSummaryDjChannelUrl extends StatelessWidget {
  const EventSummaryDjChannelUrl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.djChannelUrl != current.djChannelUrl ||
          previous.isDjChannelUrlEnabled != current.isDjChannelUrlEnabled,
      builder: (context, state) {
        return state.isDjChannelUrlEnabled
            ? Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaverPartnersHeadline(text: S().djYoutubeChannel),
                      const EventSummarySwitchStepButton(
                        step: AddEventStep.urlLinks,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: RaverHyperLink(
                          url: state.djChannelUrl.value,
                          label: Text(
                            state.djChannelUrl.value,
                            style: context.subtitle2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              )
            : Container();
      },
    );
  }
}

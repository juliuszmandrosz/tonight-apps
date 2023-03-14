import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/application/add_event/add_event_step.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_list_tile.dart';
import 'package:translations/translations.dart';

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
                  EventSummaryListTile(
                      title: S().djYoutubeChannel,
                      subtitle: TonightHyperLink(
                        url: state.djChannelUrl.value,
                        label: Text(
                          state.djChannelUrl.value,
                          style: context.subtitle1.copyWith(
                            color: context.secondaryColor,
                          ),
                        ),
                      ),
                      step: AddEventStep.urlLinks),
                  const SizedBox(height: 20),
                ],
              )
            : Container();
      },
    );
  }
}

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/application/add_event/add_event_step.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_list_tile.dart';
import 'package:translations/raver_translations.dart';

class EventSummaryFacebookUrl extends StatelessWidget {
  const EventSummaryFacebookUrl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.facebookUrl != current.facebookUrl ||
          previous.isFacebookUrlEnabled != current.isFacebookUrlEnabled,
      builder: (context, state) {
        return state.isFacebookUrlEnabled
            ? Column(
                children: [
                  EventSummaryListTile(
                    title: S().facebookEvent,
                    subtitle: TonightHyperLink(
                      url: state.facebookUrl.value,
                      label: Text(
                        state.facebookUrl.value,
                        style: context.titleMedium.copyWith(
                          color: context.secondaryColor,
                        ),
                      ),
                    ),
                    step: AddEventStep.urlLinks,
                  ),
                  const SizedBox(height: 20),
                ],
              )
            : Container();
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_list_tile.dart';
import 'package:raver_translations/raver_translations.dart';

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
                    subtitle: RaverHyperLink(
                      url: state.facebookUrl.value,
                      label: Text(
                        state.facebookUrl.value,
                        style: context.subtitle1.copyWith(
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

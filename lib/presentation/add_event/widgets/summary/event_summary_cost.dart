import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_list_tile.dart';

class EventSummaryCost extends StatelessWidget {
  const EventSummaryCost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) => previous.eventFee != current.eventFee,
      builder: (context, state) {
        return EventSummaryListTile(
          // TODO - add translation
          title: 'Prowizja',
          subtitle: Text(
            '${(state.eventFee.getOrCrash() * 100).toStringAsFixed(0)}%',
            style: context.subtitle1.copyWith(color: context.secondaryColor),
          ),
          step: AddEventStep.cost,
        );
      },
    );
  }
}

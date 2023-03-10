import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_list_tile.dart';
import 'package:raver_translations/raver_translations.dart';

class EventSummaryCost extends StatelessWidget {
  const EventSummaryCost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.selectedEventFee != current.selectedEventFee,
      builder: (context, state) {
        return EventSummaryListTile(
          title: S().fee,
          subtitle: Text(
            '${(state.selectedEventFee.getOrCrash() * 100).toStringAsFixed(0)}%',
            style: context.subtitle1.copyWith(color: context.secondaryColor),
          ),
          step: AddEventStep.cost,
        );
      },
    );
  }
}

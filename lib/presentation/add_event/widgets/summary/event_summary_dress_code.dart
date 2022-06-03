import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_list_tile.dart';
import 'package:raver_translations/generated/l10n.dart';

class EventSummaryDressCode extends StatelessWidget {
  const EventSummaryDressCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) => previous.dressCode != current.dressCode,
      builder: (context, state) {
        return EventSummaryListTile(
          title: S().dressCode,
          subtitle: Text(
            state.dressCode.value.capitalize(),
            style: context.subtitle1.copyWith(color: context.secondaryColor),
          ),
          step: AddEventStep.details,
        );
      },
    );
  }
}

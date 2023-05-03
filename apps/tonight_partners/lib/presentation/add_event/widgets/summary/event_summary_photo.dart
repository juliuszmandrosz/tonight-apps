import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/application/add_event/add_event_step.dart';
import 'package:tonight_partners/presentation/add_event/widgets/photo/event_preview_card.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_list_tile.dart';
import 'package:translations/translations.dart';

class EventSummaryPhoto extends StatelessWidget {
  const EventSummaryPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.eventPhoto != current.eventPhoto,
      builder: (context, state) {
        return EventSummaryListTile(
          title: S().photos(1),
          subtitle: const EventPreviewCard(),
          step: AddEventStep.photo,
        );
      },
    );
  }
}

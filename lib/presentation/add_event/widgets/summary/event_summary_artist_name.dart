import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_list_tile.dart';
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
            ? EventSummaryListTile(
                title: S().artistName,
                subtitle: Text(
                  state.artistName.value,
                  style: context.subtitle1.copyWith(
                    color: context.secondaryColor,
                  ),
                ),
                step: AddEventStep.concertInfo)
            : Container();
      },
    );
  }
}

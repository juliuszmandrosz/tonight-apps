import 'package:common/common.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/application/add_event/add_event_step.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_list_tile.dart';
import 'package:translations/generated/l10n.dart';

class EventSummaryMusic extends StatelessWidget {
  const EventSummaryMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) => !listEquals(
        previous.musicalGenres.value,
        current.musicalGenres.value,
      ),
      builder: (context, state) {
        return EventSummaryListTile(
          title: S().music,
          subtitle: Text(
            _displayMusicalGenres(
              state.musicalGenres.value,
            ),
            style: context.subtitle1.copyWith(
              color: context.secondaryColor,
            ),
          ),
          step: AddEventStep.details,
        );
      },
    );
  }

  String _displayMusicalGenres(
    List<String> musicalGenres,
  ) {
    final sb = StringBuffer();
    for (var genre in musicalGenres) {
      sb.write(genre.capitalize());
      if (genre != musicalGenres.last) {
        sb.write(', ');
      }
    }
    return '$sb';
  }
}

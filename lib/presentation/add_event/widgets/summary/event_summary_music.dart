import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_switch_step_button.dart';
import 'package:raver_partners/presentation/core/raver_partners_headline.dart';
import 'package:raver_translations/generated/l10n.dart';

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
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaverPartnersHeadline(text: S().music),
                const EventSummarySwitchStepButton(step: AddEventStep.details),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Text(
                    _displayMusicalGenres(
                      state.musicalGenres.value,
                    ),
                    style: context.subtitle1,
                  ),
                ),
              ],
            ),
          ],
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

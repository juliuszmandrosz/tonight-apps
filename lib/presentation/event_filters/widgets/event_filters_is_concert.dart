import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/core/raver_headline.dart';

class EventFiltersIsConcert extends StatelessWidget {
  const EventFiltersIsConcert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.isConcert != current.filters.isConcert,
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                RaverHeadline(text: S().isConcert),
              ],
            ),
            RadioListTile<bool>(
              activeColor: DefaultColors.primaryColor,
              title: Text(S().yes),
              value: true,
              groupValue: state.filters.isConcert,
              onChanged: (value) => BlocProvider.of<EventFiltersCubit>(context)
                  .changeIsConcertValue(true),
            ),
            RadioListTile<bool>(
              activeColor: DefaultColors.primaryColor,
              title: Text(S().no),
              value: false,
              groupValue: state.filters.isConcert,
              onChanged: (value) => BlocProvider.of<EventFiltersCubit>(context)
                  .changeIsConcertValue(false),
            ),
          ],
        );
      },
    );
  }
}

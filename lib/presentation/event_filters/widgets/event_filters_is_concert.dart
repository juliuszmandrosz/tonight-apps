import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_translations/raver_translations.dart';

class EventFiltersIsConcert extends StatelessWidget {
  const EventFiltersIsConcert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.isConcertFilter.isConcert !=
          current.filters.isConcertFilter.isConcert,
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                RaverHeadline(text: S().isConcert),
              ],
            ),
            RadioListTile<bool>(
              title: Text(S().yes),
              value: true,
              groupValue: state.filters.isConcertFilter.isConcert,
              onChanged: (value) => BlocProvider.of<EventFiltersCubit>(context)
                  .changeIsConcertValue(true),
            ),
            RadioListTile<bool>(
              title: Text(S().no),
              value: false,
              groupValue: state.filters.isConcertFilter.isConcert,
              onChanged: (value) => BlocProvider.of<EventFiltersCubit>(context)
                  .changeIsConcertValue(false),
            ),
          ],
        );
      },
    );
  }
}

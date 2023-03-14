import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

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
            Align(
              alignment: Alignment.centerLeft,
              child: TonightHeadline(
                text: S().isConcert,
                isSmallerVersion: true,
              ),
            ),
            RadioListTile<bool>(
              contentPadding: EdgeInsets.zero,
              activeColor: context.primaryColor,
              title: Text(S().yes),
              value: true,
              groupValue: state.filters.isConcertFilter.isConcert,
              onChanged: (value) => BlocProvider.of<EventFiltersCubit>(context)
                  .changeIsConcertValue(true),
            ),
            RadioListTile<bool>(
              contentPadding: EdgeInsets.zero,
              activeColor: context.primaryColor,
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

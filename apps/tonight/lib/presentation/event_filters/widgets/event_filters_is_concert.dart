import 'package:common/extensions/color_extensions.dart';
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
          previous.filters.showOnlyConcertsFilter.showOnlyConcerts !=
          current.filters.showOnlyConcertsFilter.showOnlyConcerts,
      builder: (context, state) {
        return ListTileTheme(
          contentPadding: const EdgeInsets.all(0),
          dense: true,
          child: ExpansionTile(
            leading: TonightHeadline(
              text: S().showOnlyConcerts,
              isSmallerVersion: true,
            ),
            title: const SizedBox.shrink(),
            children: [
              RadioListTile<bool?>(
                contentPadding: EdgeInsets.zero,
                activeColor: context.primaryColor,
                title: Text(S().yes),
                value: true,
                groupValue:
                    state.filters.showOnlyConcertsFilter.showOnlyConcerts,
                onChanged: (value) => context
                    .read<EventFiltersCubit>()
                    .changeIsConcertValue(true),
              ),
              RadioListTile<bool?>(
                contentPadding: EdgeInsets.zero,
                activeColor: context.primaryColor,
                title: Text(S().no),
                value: false,
                groupValue:
                    state.filters.showOnlyConcertsFilter.showOnlyConcerts,
                onChanged: (value) => context
                    .read<EventFiltersCubit>()
                    .changeIsConcertValue(false),
              ),
            ],
          ),
        );
      },
    );
  }
}

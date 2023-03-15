import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

class EventFiltersPlaceOption extends StatelessWidget {
  const EventFiltersPlaceOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.maxDistanceFilter.enabled !=
          current.filters.maxDistanceFilter.enabled,
      builder: (context, filtersState) {
        return Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TonightHeadline(
                text: '${S().findEventPlaceBy}:',
                isSmallerVersion: true,
              ),
            ),
            const SizedBox(height: 10),
            RadioListTile<bool>(
              contentPadding: EdgeInsets.zero,
              activeColor: context.primaryColor,
              title: AutoSizeText(
                S().findByCity,
                maxLines: 1,
                style: context.titleMedium,
              ),
              value: false,
              groupValue: filtersState.filters.maxDistanceFilter.enabled,
              onChanged: (value) => BlocProvider.of<EventFiltersCubit>(context)
                  .changeIsMaxDistanceOption(false),
            ),
            RadioListTile<bool>(
              contentPadding: EdgeInsets.zero,
              activeColor: context.primaryColor,
              title: AutoSizeText(
                S().findByMaxDistance,
                maxLines: 1,
                style: context.titleMedium,
              ),
              value: true,
              groupValue: filtersState.filters.maxDistanceFilter.enabled,
              onChanged: (value) => BlocProvider.of<EventFiltersCubit>(context)
                  .changeIsMaxDistanceOption(true),
            ),
          ],
        );
      },
    );
  }
}

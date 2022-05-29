import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

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
              child: RaverHeadline(
                text: '${S().findEventPlaceBy}:',
                isSmallerVersion: true,
              ),
            ),
            const SizedBox(height: 10),
            RadioListTile<bool>(
              contentPadding: EdgeInsets.zero,
              activeColor: context.primaryColor,
              title: AutoSizeText(
                S().city,
                maxLines: 1,
                style: context.subtitle1,
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
                style: context.subtitle1,
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

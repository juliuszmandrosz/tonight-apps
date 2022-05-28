import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class EventFiltersMinAge extends StatelessWidget {
  final List<int> availableMinAges;

  const EventFiltersMinAge({
    required this.availableMinAges,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.minAgesFilter.minAges !=
          current.filters.minAgesFilter.minAges,
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [RaverHeadline(text: S().age)],
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                for (var age in availableMinAges)
                  CheckboxListTile(
                    title: Text('$age+', style: context.subtitle1),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: state.filters.minAgesFilter.minAges.contains(age),
                    onChanged: (value) =>
                        BlocProvider.of<EventFiltersCubit>(context)
                            .changeMinAges(age),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}

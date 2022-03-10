import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/core/raver_headline.dart';

class EventFiltersMinAge extends StatelessWidget {
  final List<int> availableMinAges;

  const EventFiltersMinAge({
    required this.availableMinAges,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.minAges != current.filters.minAges,
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: const [
                RaverHeadline(text: 'Age'),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                for (var age in availableMinAges)
                  CheckboxListTile(
                    activeColor: DefaultColors.primaryColor,
                    title: Text(
                      '$age+',
                      style: textTheme.subtitle1,
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: state.filters.minAges.contains(age),
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

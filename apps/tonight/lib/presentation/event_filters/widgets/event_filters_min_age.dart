import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

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
            Align(
              alignment: Alignment.centerLeft,
              child: TonightHeadline(
                text: S().age,
                isSmallerVersion: true,
              ),
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                for (var age in availableMinAges)
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    activeColor: context.primaryColor,
                    title: Text('$age+', style: context.titleMedium),
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

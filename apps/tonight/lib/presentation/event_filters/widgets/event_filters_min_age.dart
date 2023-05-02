import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/raver_translations.dart';

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
        return ListTileTheme(
          contentPadding: const EdgeInsets.all(0),
          dense: true,
          child: ExpansionTile(
            leading: TonightHeadline(
              text: S().age,
              isSmallerVersion: true,
            ),
            title: const SizedBox.shrink(),
            children: [
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
                          context.read<EventFiltersCubit>().changeMinAges(age),
                    ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

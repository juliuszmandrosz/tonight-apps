import 'package:common/extensions/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

class EventFiltersShowWholeWorld extends StatelessWidget {
  const EventFiltersShowWholeWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (p, c) =>
          p.filters.maxDistanceFilter.enabled !=
          c.filters.maxDistanceFilter.enabled,
      builder: (context, state) {
        return ListTileTheme(
          contentPadding: const EdgeInsets.all(0),
          dense: true,
          child: ExpansionTile(
            leading: TonightHeadline(
              text: S().showFromAroundTheWorld,
              isSmallerVersion: true,
            ),
            title: const SizedBox.shrink(),
            children: [
              RadioListTile<bool>(
                contentPadding: EdgeInsets.zero,
                activeColor: context.primaryColor,
                title: Text(S().yes),
                value: true,
                groupValue: !state.filters.maxDistanceFilter.enabled,
                onChanged: (value) => context
                    .read<EventFiltersCubit>()
                    .changeShowWholeWorldValue(true),
              ),
              RadioListTile<bool>(
                contentPadding: EdgeInsets.zero,
                activeColor: context.primaryColor,
                title: Text(S().no),
                value: false,
                groupValue: !state.filters.maxDistanceFilter.enabled,
                onChanged: (value) => context
                    .read<EventFiltersCubit>()
                    .changeShowWholeWorldValue(false),
              ),
            ],
          ),
        );
      },
    );
  }
}

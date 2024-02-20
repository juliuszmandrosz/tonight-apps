import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:common/infrastructure/algolia/city_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class EventCityPickerField extends HookWidget {
  const EventCityPickerField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cityPickerController = useTextEditingController();
    return BlocConsumer<EventsBloc, EventsState>(
      listenWhen: (previous, current) =>
          previous.eventFilters.cityFilter != current.eventFilters.cityFilter,
      listener: (context, state) {
        cityPickerController.text = state.eventFilters.cityFilter.cityName;
      },
      buildWhen: (previous, current) =>
          previous.eventFilters.cityFilter != current.eventFilters.cityFilter,
      builder: (context, state) {
        return TextField(
          controller: cityPickerController,
          onTap: () => context.pushRoute(
            EventCityPickerRoute(
              blocContext: context,
              selectedCity: state.eventFilters.cityFilter,
            ),
          ),
          textAlignVertical: TextAlignVertical.center,
          readOnly: true,
          decoration: InputDecoration(
            hintMaxLines: 1,
            hintStyle: context.titleSmall.copyWith(color: context.hintColor),
            hintText: S().where,
            prefixIcon: state.eventFilters.cityFilter.cityName.isNotEmpty
                ? null
                : const Icon(Icons.location_pin),
            suffixIcon: state.eventFilters.cityFilter.cityName.isNotEmpty
                ? IconButton(
                    onPressed: () => context.read<EventsBloc>().add(
                          EventsEvent.cityFilterApplied(CityFilter.empty()),
                        ),
                    icon: const Icon(Icons.clear),
                  )
                : null,
          ),
        );
      },
    );
  }
}

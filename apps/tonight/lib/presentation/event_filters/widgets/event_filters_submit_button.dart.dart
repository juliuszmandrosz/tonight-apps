import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/application/events/event_filters/event_filters_page_type.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:tonight/application/tonight_events/bloc/tonight_events_bloc.dart';
import 'package:translations/translations.dart';

class EventFiltersSubmitButton extends StatelessWidget {
  final EventFiltersPageType eventFiltersPageType;

  const EventFiltersSubmitButton({
    required this.eventFiltersPageType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<EventFiltersCubit, EventFiltersState>(
      listenWhen: (previous, current) =>
          previous.appliedFilters != current.appliedFilters,
      listener: (context, state) {
        switch (eventFiltersPageType) {
          case EventFiltersPageType.tonight:
            context.read<TonightEventsBloc>().add(
                  TonightEventsEvent.menuFiltersApplied(
                    filters: state.filters,
                    appliedFilters: state.appliedFilters,
                  ),
                );
            break;
          case EventFiltersPageType.discover:
            context.read<EventsBloc>().add(
                  EventsEvent.menuFiltersApplied(
                    filters: state.filters,
                    appliedFilters: state.appliedFilters,
                  ),
                );
            break;
        }

        context.popRoute();
      },
      child: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0,
        child: SizedBox(
          width: 300,
          child: FloatingActionButton.extended(
            onPressed: () =>
                context.read<EventFiltersCubit>().submitMenuFilters(),
            label: Text(S().applyFilters),
            icon: const FaIcon(FontAwesomeIcons.check),
          ),
        ),
      ),
    );
  }
}

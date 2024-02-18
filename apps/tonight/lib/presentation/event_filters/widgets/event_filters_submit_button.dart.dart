import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/responsive_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:translations/translations.dart';

class EventFiltersSubmitButton extends StatelessWidget {
  const EventFiltersSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EventFiltersCubit, EventFiltersState>(
      listenWhen: (previous, current) =>
          previous.isSubmitting != current.isSubmitting,
      listener: (context, state) {
        context.read<EventsBloc>().add(
              EventsEvent.menuFiltersApplied(
                filters: state.filters,
                appliedFilters: state.appliedFilters,
              ),
            );
        context.popRoute();
      },
      child: Visibility(
        visible: context.viewInsets.bottom == 0,
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

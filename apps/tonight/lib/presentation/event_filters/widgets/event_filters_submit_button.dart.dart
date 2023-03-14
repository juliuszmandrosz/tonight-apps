import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:translations/translations.dart';

class EventFiltersSubmitButton extends StatelessWidget {
  const EventFiltersSubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: MediaQuery.of(context).viewInsets.bottom == 0,
      child: SizedBox(
        width: 300,
        child: FloatingActionButton.extended(
          onPressed: () {
            final filtersCubit = context.read<EventFiltersCubit>();
            final result =
                filtersCubit.submitFilters(isMenuFilterApplied: true);
            if (result) {
              context.popRoute();
            }
          },
          label: Text(S().applyFilters),
          icon: const FaIcon(FontAwesomeIcons.check),
        ),
      ),
    );
  }
}

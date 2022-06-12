import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class EventFiltersSubmitButton extends StatelessWidget {
  const EventFiltersSubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: FloatingActionButton.extended(
        onPressed: () {
          context.read<EventFiltersCubit>().submitFilters();
          context.popRoute();
        },
        label: Text(S().applyFilters),
        icon: const FaIcon(FontAwesomeIcons.check),
      ),
    );
  }
}

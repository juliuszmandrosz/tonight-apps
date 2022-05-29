import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class EventFiltersButtons extends StatelessWidget {
  const EventFiltersButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 300,
          child: ElevatedButton(
            onPressed: () {
              BlocProvider.of<EventFiltersCubit>(context).resetFilters();
              AutoRouter.of(context).pop();
            },
            child: Text(S().resetFilters),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 300,
          child: ElevatedButton(
            onPressed: () {
              BlocProvider.of<EventFiltersCubit>(context).submitFilters();
              AutoRouter.of(context).pop();
            },
            child: Text(S().applyFilters),
          ),
        ),
      ],
    );
  }
}

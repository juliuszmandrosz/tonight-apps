import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';

class EventFiltersButtons extends StatelessWidget {
  const EventFiltersButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<EventFiltersCubit>(context).resetFilters();
            AutoRouter.of(context).pop();
          },
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Reset filters'),
          ),
          style: theme.elevatedButtonTheme.style!.copyWith(
            backgroundColor: MaterialStateProperty.all(
              DefaultColors.textColorLight,
            ),
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<EventFiltersCubit>(context).submitFilters();
            AutoRouter.of(context).pop();
          },
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Apply filters'),
          ),
        ),
      ],
    );
  }
}

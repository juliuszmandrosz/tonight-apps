import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class EventFiltersRow extends StatelessWidget {
  const EventFiltersRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () => AutoRouter.of(context).push(
                  const EventDatePickerRoute(),
                ),
                child: Text(S().date),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: OutlinedButton(
                onPressed: () => AutoRouter.of(context).push(
                  const EventFiltersRoute(),
                ),
                child: Text(S().filters),
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 10),
                BlocBuilder<EventFiltersCubit, EventFiltersState>(
                  buildWhen: (previous, current) =>
                      previous.isFilterApplied != current.isFilterApplied,
                  builder: (context, state) {
                    return OutlinedButton(
                      onPressed: state.isFilterApplied
                          ? () =>
                              context.read<EventFiltersCubit>().resetFilters()
                          : null,
                      child: const Text(
                        // TODO - add translation
                        'Wyczyść filtry',
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

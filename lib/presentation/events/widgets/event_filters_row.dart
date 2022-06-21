import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class EventFiltersRow extends StatelessWidget {
  const EventFiltersRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.isFilterApplied != current.isFilterApplied ||
          previous.isDateFilterApplied != current.isDateFilterApplied ||
          previous.isMenuFilterApplied != current.isMenuFilterApplied,
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => context.pushRoute(
                      EventDatePickerRoute(blocContext: context),
                    ),
                    child: Text(
                      S().date,
                      style: context.bodyText2.copyWith(
                        color: state.isDateFilterApplied
                            ? context.primaryColor
                            : context.onSurfaceColor,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        width: 2,
                        color: state.isDateFilterApplied
                            ? context.primaryColor
                            : context.outlineColor.darken(0.3),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => context.pushRoute(
                      EventFiltersRoute(blocContext: context),
                    ),
                    child: Text(
                      S().filters,
                      style: context.bodyText2.copyWith(
                        color: state.isMenuFilterApplied
                            ? context.primaryColor
                            : context.onSurfaceColor,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        width: 2,
                        color: state.isMenuFilterApplied
                            ? context.primaryColor
                            : context.outlineColor.darken(0.3),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: state.isFilterApplied
                          ? () =>
                              context.read<EventFiltersCubit>().resetFilters()
                          : null,
                      child: Text(
                        S().clearFilters,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

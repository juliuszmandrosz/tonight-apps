import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/dashboard/bloc/tonight_events_from_venues_bloc.dart';
import 'package:tonight/application/events/event_filters/event_filters_page_type.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class TonightEventFilterChips extends StatelessWidget {
  const TonightEventFilterChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TonightEventsFromVenuesBloc,
        TonightEventsFromVenuesState>(
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              InputChip(
                backgroundColor: context.backgroundColor,
                label: state.appliedMenuFilters.isNotEmpty
                    ? Text(
                        '${S().filters} (${state.appliedMenuFilters.length})')
                    : Text(S().filters),
                onPressed: () => context.pushRoute(
                  EventFiltersRoute(
                    blocContext: context,
                    selectedFilters: state.eventFilters,
                    eventFiltersPageType: EventFiltersPageType.tonight,
                  ),
                ),
                avatar: FaIcon(
                  FontAwesomeIcons.sliders,
                  color: state.appliedMenuFilters.isNotEmpty
                      ? context.primaryColor
                      : context.onSurfaceColor,
                  size: 16,
                ),
                showCheckmark: false,
              ),
              const SizedBox(width: 4),
              for (var filter in state.appliedMenuFilters.keys)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: InputChip(
                    backgroundColor: context.backgroundColor,
                    label: Text(filter.label),
                    onDeleted: () => context
                        .read<TonightEventsFromVenuesBloc>()
                        .add(TonightEventsFromVenuesEvent.menuFilterRemoved(
                            filter)),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/presentation/events/widgets/event_search_field.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventFiltersRow extends StatelessWidget {
  const EventFiltersRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventsBloc = context.read<EventOverviewBloc>();
    return Column(
      children: [
        const EventSearchField(),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              child: OutlinedButton.icon(
                onPressed: () => AutoRouter.of(context).push(
                  const EventDatePickerRoute(),
                ),
                icon: const FaIcon(
                  FontAwesomeIcons.calendar,
                  size: 16,
                ),
                label: Text(S().date),
              ),
            ),
            Flexible(
              child: OutlinedButton.icon(
                onPressed: () => AutoRouter.of(context).push(
                  const EventFiltersRoute(),
                ),
                icon: const FaIcon(
                  FontAwesomeIcons.filter,
                  size: 16,
                ),
                label: Text(S().filters),
              ),
            ),
            Flexible(
              child: OutlinedButton.icon(
                onPressed: () => eventsBloc.add(
                  EventOverviewEvent.eventsFetched(
                    eventsBloc.state.eventFilters,
                    eventsBloc.state.sortModel,
                  ),
                ),
                icon: const FaIcon(
                  FontAwesomeIcons.arrowsRotate,
                  size: 16,
                ),
                label: AutoSizeText(
                  S().refresh,
                  maxLines: 1,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/event_filters/event_filters_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/events/widgets/event_list.dart';
import 'package:raver_partners/presentation/events/widgets/events_filters_section.dart';

class UpcomingEventsTab extends StatefulWidget {
  const UpcomingEventsTab({Key? key}) : super(key: key);

  @override
  State<UpcomingEventsTab> createState() => _UpcomingEventsTabState();
}

class _UpcomingEventsTabState extends State<UpcomingEventsTab>
    with AutomaticKeepAliveClientMixin<UpcomingEventsTab> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [
        BlocProvider(
          create: (context) => getIt<EventFiltersCubit>(
            param1: context.read<EventOverviewBloc>(),
          ),
          child: const EventsFiltersSection(),
        ),
        const SizedBox(height: 20),
        const EventList(),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

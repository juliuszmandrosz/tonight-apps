import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/event_filters/event_filters_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/events/widgets/events_filters_section.dart';
import 'package:raver_partners/presentation/events/widgets/event_list.dart';

class LiveEventsTab extends StatefulWidget {
  const LiveEventsTab({Key? key}) : super(key: key);

  @override
  State<LiveEventsTab> createState() => _LiveEventsTabState();
}

class _LiveEventsTabState extends State<LiveEventsTab>
    with AutomaticKeepAliveClientMixin<LiveEventsTab> {
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
        const SizedBox(height: 10),
        const EventList(),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

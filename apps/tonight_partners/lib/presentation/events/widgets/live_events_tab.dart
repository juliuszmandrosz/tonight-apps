import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/event_filters/event_filters_cubit.dart';
import 'package:tonight_partners/injection.dart';
import 'package:tonight_partners/presentation/events/widgets/event_list.dart';
import 'package:tonight_partners/presentation/events/widgets/events_filters_section.dart';

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
        const SizedBox(height: 20),
        const EventList(),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

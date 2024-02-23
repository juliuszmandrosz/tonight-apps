import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/collective_details/collective_details_bloc.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/events/event_shimmer.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/events/event_tile.dart';
import 'package:translations/translations.dart';

class CollectiveEvents extends HookWidget {
  final String collectiveId;

  const CollectiveEvents({super.key, required this.collectiveId});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      _refreshEvents(context);
      return null;
    }, const []);

    return Column(
      children: [
        Expanded(
          child: BlocBuilder<CollectiveDetailsBloc, CollectiveDetailsState>(
            builder: (context, state) {
              switch (state.getEventsStatus) {
                case CubitStatus.initial:
                  return const SizedBox.shrink();

                case CubitStatus.loading:
                  return ListView.separated(
                    itemCount: 4,
                    separatorBuilder: (_, __) => const SizedBox(height: 20),
                    itemBuilder: (context, index) => const EventShimmer(),
                  );

                case CubitStatus.failure:
                  return FailureInfo(
                    retryCallback: () => _refreshEvents(context),
                  );

                case CubitStatus.success:
                  return state.events.isEmpty
                      ? NoResults(
                          message: S().events(0),
                          onRefresh: () => _refreshEvents(context))
                      : RefreshIndicator(
                          onRefresh: () async => _refreshEvents(context),
                          child: ListView.separated(
                            itemCount: state.events.length,
                            itemBuilder: (_, i) => EventTile(
                              event: state.events[i],
                            ),
                            separatorBuilder: (_, __) => const Divider(),
                          ),
                        );
              }
            },
          ),
        )
      ],
    );
  }

  _refreshEvents(BuildContext context) {
    context
        .read<CollectiveDetailsBloc>()
        .add(CollectiveDetailsEvent.eventsFetched(collectiveId));
  }
}

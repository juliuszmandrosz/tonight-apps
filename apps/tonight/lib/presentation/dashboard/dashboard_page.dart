import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/application/dashboard/bloc/dashboard_bloc.dart';
import 'package:tonight/application/dashboard/bloc/tonight_events_from_venues_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/marketplace_banner.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/marketplace_discounts.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/upcoming_tonight_events.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/user_stories_row.dart';
import 'package:tonight/presentation/dashboard/tonight_events_from_venues_widgets/tonight_events_from_venues.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userLocation = context.read<UserLocationCubit>().state.userLocation;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<TonightEventsFromVenuesBloc>()
            ..add(TonightEventsFromVenuesEvent.eventsFetched(userLocation)),
        ),
        BlocProvider(
          create: (context) => getIt<DashboardBloc>()
            ..add(DashboardEvent.dataInitialized(userLocation)),
        ),
      ],
      child: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          switch (state.initialStatus) {
            case CubitStatus.initial:
              return const SizedBox.shrink();
            case CubitStatus.loading:
              return const WaveLoadingIndicator();
            case CubitStatus.failure:
              return FailureInfo(
                  retryCallback: () => context
                      .read<DashboardBloc>()
                      .add(DashboardEvent.dataInitialized(userLocation)));
            case CubitStatus.success:
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: RefreshIndicator(
                  onRefresh: () async {
                    context.read<TonightEventsFromVenuesBloc>().add(
                        const TonightEventsFromVenuesEvent.eventsRefreshed());
                    context
                        .read<DashboardBloc>()
                        .add(DashboardEvent.dataInitialized(userLocation));
                  },
                  child: const SingleChildScrollView(
                    child: Column(
                      children: [
                        StoriesRow(
                          userImages: [
                            'https://picsum.photos/id/237/200/300',
                            'https://fastly.picsum.photos/id/27/3264/1836.jpg?hmac=p3BVIgKKQpHhfGRRCbsi2MCAzw8mWBCayBsKxxtWO8g',
                            'https://fastly.picsum.photos/id/29/4000/2670.jpg?hmac=rCbRAl24FzrSzwlR5tL-Aqzyu5tX_PA95VJtnUXegGU',
                          ],
                        ),
                        SizedBox(height: 20),
                        UpcomingTonightEvents(),
                        SizedBox(height: 20),
                        MarketplaceBanner(),
                        SizedBox(height: 20),
                        MarketplaceDiscounts(),
                        SizedBox(height: 20),
                        TonightEventsFromVenues(),
                      ],
                    ),
                  ),
                ),
              );
          }
        },
      ),
    );
  }
}

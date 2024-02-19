import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/application/dashboard/bloc/dashboard_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/dashboard_discover_circle_avatars.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/dashboard_search_field.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/marketplace_banner.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/marketplace_discounts.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/social_media_row.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/upcoming_tonight_events.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userLocation = context.read<UserLocationCubit>().state.userLocation;
    return MultiBlocProvider(
      providers: [
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
                isSocketException: state.failure.fold(
                  () => false,
                  (f) => f.maybeWhen(
                    noConnection: () => true,
                    orElse: () => false,
                  ),
                ),
                retryCallback: () => context.read<DashboardBloc>().add(
                      DashboardEvent.dataInitialized(userLocation),
                    ),
              );
            case CubitStatus.success:
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<DashboardBloc>()
                        .add(DashboardEvent.dataInitialized(userLocation));
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: DashboardSearchField(),
                        ),
                        const SizedBox(height: 20),
                        const DashboardDiscoverCircleAvatars(),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Divider(thickness: .5),
                        ),
                        const SizedBox(height: 8),
                        const UpcomingTonightEvents(),
                        const SizedBox(height: 20),
                        const MarketplaceBanner(),
                        const SizedBox(height: 20),
                        const MarketplaceDiscounts(),
                        // if (state.dashboardData.tonightEvents.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 20,
                            top: 20,
                          ),
                          child: SocialMediaRow(
                            colors: [
                              const Color(0xFF6B5FE7),
                              Colors.purple.shade300,
                            ],
                            iconSize: 50,
                          ),
                        ),
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

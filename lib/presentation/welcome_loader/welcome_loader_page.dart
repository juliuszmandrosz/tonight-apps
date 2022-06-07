import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/application/initialization/remote_config_cubit.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/application/welcome_loading/welcome_loading_cubit.dart';
import 'package:raver/presentation/core/ticket_logo_animation.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_events/application/application.dart';

class WelcomeLoaderPage extends StatefulWidget {
  const WelcomeLoaderPage({Key? key}) : super(key: key);

  @override
  State<WelcomeLoaderPage> createState() => _WelcomeLoaderPageState();
}

class _WelcomeLoaderPageState extends State<WelcomeLoaderPage> {
  late WelcomeLoadingCubit _welcomeCubit;

  var hasBeenInitialized = false;

  _initWelcomeCubit(BuildContext context) {
    if (!hasBeenInitialized) {
      hasBeenInitialized = true;
      _welcomeCubit = WelcomeLoadingCubit(
        profileCubit: context.read<ProfileCubit>(),
        userLocationCubit: context.read<UserLocationCubit>(),
        remoteConfigCubit: context.read<RemoteConfigCubit>(),
        eventFiltersCubit: context.read<EventFiltersCubit>(),
        eventOverviewBloc: context.read<EventOverviewBloc>(),
        clubsOverviewBloc: context.read<ClubsOverviewBloc>(),
        ticketListCubit: context.read<TicketListCubit>(),
        eventFavoriteCubit: context.read<EventFavoriteCubit>(),
        clubFavoriteCubit: context.read<ClubFavoriteCubit>(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    _initWelcomeCubit(context);
    return Scaffold(
      body: BlocProvider(
        create: (ctx) => _welcomeCubit,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<WelcomeLoadingCubit, WelcomeLoadingState>(
              bloc: _welcomeCubit..loadDependencies(),
              listener: (context, state) {
                if (state.isFailure) {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      // TODO - change
                      return const Center(
                        child: Text('Error'),
                      );
                    },
                  );
                }
                if (state.dependenciesLoaded) {
                  AutoRouter.of(context).replace(const NavigatorRoute());
                  if (!state.onboardingCompleted) {
                    AutoRouter.of(context).push(const OnboardingRoute());
                  }
                }
              },
              builder: (context, state) {
                return !state.isFailure
                    ? const TicketLogoAnimation()
                    : Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}

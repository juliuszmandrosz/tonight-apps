import 'package:auto_route/auto_route.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:raver/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/application/initialization/remote_config_cubit.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/application/welcome_loading/welcome_loading_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/ticket_logo_animation.dart';
import 'package:raver/presentation/navigator/navigator_page.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/application/application.dart';

class WelcomeLoaderPage extends StatefulWidget {
  const WelcomeLoaderPage({Key? key}) : super(key: key);

  @override
  State<WelcomeLoaderPage> createState() => _WelcomeLoaderPageState();
}

class _WelcomeLoaderPageState extends State<WelcomeLoaderPage> {
  TicketLogoAnimation? _ticketLogoAnimation;
  WelcomeLoadingCubit? _welcomeLoadingCubit;

  WelcomeLoadingCubit _initWelcomeCubit(BuildContext context) {
    _welcomeLoadingCubit = WelcomeLoadingCubit(
      profileCubit: context.read<ProfileCubit>(),
      userLocationCubit: context.read<UserLocationCubit>(),
      eventOverviewBloc: context.read<EventOverviewBloc>(),
      clubsOverviewBloc: context.read<ClubsOverviewBloc>(),
      ticketListCubit: context.read<TicketListCubit>(),
      eventFavoriteCubit: context.read<EventFavoriteCubit>(),
      clubFavoriteCubit: context.read<ClubFavoriteCubit>(),
      availableFiltersCubit: context.read<AvailableFiltersCubit>(),
      firebaseRemoteConfig: getIt<FirebaseRemoteConfig>(),
      stripe: getIt<Stripe>(),
    );

    return _welcomeLoadingCubit!;
  }

  @override
  Widget build(BuildContext context) {
    context.read<RemoteConfigCubit>().setupRemoteConfig();
    return MultiBlocListener(
      listeners: [
        BlocListener<NetworkCheckCubit, NetworkCheckState>(
          bloc: context.read<NetworkCheckCubit>(),
          listener: (context, state) {
            final currentRoute = AutoRouter.of(context).current.name;
            if (!state.isConnected && currentRoute != NetworkLostRoute.name) {
              context.pushRoute(const NetworkLostRoute());
            }
          },
        ),
        BlocListener<AuthCubit, AuthState>(
          bloc: context.read<AuthCubit>(),
          listener: (context, state) => state.map(
              initial: (_) {},
              authenticated: (_) => {},
              unauthenticated: (_) =>
                  context.replaceRoute(const SignInRoute())),
        )
      ],
      child: BlocConsumer<RemoteConfigCubit, RemoteConfigState>(
        listener: (context, state) {
          if (state.cubitStatus.isFailure()) {
            context.replaceRoute(const NetworkLostRoute());
          }
        },
        builder: (context, state) {
          if (state.cubitStatus.isInitial() || state.cubitStatus.isFailure()) {
            return Container();
          }

          if (state.cubitStatus.isLoading()) {
            return _ticketLogoAnimation ?? const TicketLogoAnimation();
          }

          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<EventOverviewBloc>(),
              ),
              BlocProvider(
                create: (context) => getIt<ClubsOverviewBloc>(),
              ),
              BlocProvider(
                create: (ctx) => getIt<AvailableFiltersCubit>(),
              ),
            ],
            child: BlocProvider(
              create: (ctx) => (_welcomeLoadingCubit ?? _initWelcomeCubit(ctx))
                ..initUserProfile(),
              child: BlocConsumer<WelcomeLoadingCubit, WelcomeLoadingState>(
                listener: (context, state) {
                  if (state.status.isFailure() &&
                      context.router.current.name != FailureRoute.name) {
                    context.pushRoute(
                      FailureRoute(
                        retryCallback: () =>
                            _welcomeLoadingCubit!.loadDependencies(),
                      ),
                    );
                  }

                  state.username.fold(
                    () => {},
                    (username) {
                      if (username.isEmpty &&
                          context.router.current.name != OnboardingRoute.name) {
                        context.pushRoute(const OnboardingRoute());
                        return;
                      }

                      if (!state.status.isFailure() && username.isNotEmpty) {
                        _welcomeLoadingCubit!.loadDependencies();
                      }
                    },
                  );
                },
                builder: (context, state) {
                  if (state.status.isFailure()) {
                    return Container();
                  }

                  if (!state.dependenciesLoaded) {
                    return _ticketLogoAnimation ?? const TicketLogoAnimation();
                  }

                  return const RaverNavigator();
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

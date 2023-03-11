import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:raver/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/application/push_notifications/push_notifications_cubit.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/application/welcome_loading/welcome_loading_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/ticket_logo_animation.dart';
import 'package:raver/presentation/navigator/navigator_page.dart';
import 'package:raver/presentation/routes/app_router.gr.dart';
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
      pushNotificationsCubit: context.read<PushNotificationsCubit>(),
      stripe: getIt<Stripe>(),
      firebaseMessaging: getIt<FirebaseMessaging>(),
      networkCheckCubit: context.read<NetworkCheckCubit>(),
    );

    return _welcomeLoadingCubit!;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<NetworkCheckCubit, NetworkCheckState>(
          bloc: context.read<NetworkCheckCubit>(),
          listener: (context, state) {
            final currentRoute = context.router.current.name;
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
            unauthenticated: (_) => context.replaceRoute(const SignInRoute()),
          ),
        )
      ],
      child: MultiBlocProvider(
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
          BlocProvider(
            create: (ctx) => getIt<PushNotificationsCubit>(),
          ),
        ],
        child: BlocProvider(
          create: (ctx) => (_welcomeLoadingCubit ?? _initWelcomeCubit(ctx))
            ..initUserProfile(),
          child: BlocConsumer<WelcomeLoadingCubit, WelcomeLoadingState>(
            listener: (context, state) {
              final currentRoute = context.router.current.name;

              if (!state.hasConnection &&
                  currentRoute != NetworkLostRoute.name) {
                context.replaceRoute(const NetworkLostRoute());
                return;
              }

              if (state.status.isFailure() &&
                  context.router.current.name != FailureRoute.name) {
                context.pushRoute(
                  FailureRoute(
                    retryCallback: () =>
                        _welcomeLoadingCubit!.loadDependencies(context),
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
                    _welcomeLoadingCubit!.loadDependencies(context);
                  }
                },
              );
            },
            builder: (context, state) {
              if (state.status.isFailure() || state.username.isNone()) {
                return Container();
              }

              if (state.username.isSome() &&
                  state.username.getOrCrash().isEmpty) {
                return Container();
              }

              if (!state.dependenciesLoaded) {
                return _ticketLogoAnimation ?? const TicketLogoAnimation();
              }

              return const RaverNavigator();
            },
          ),
        ),
      ),
    );
  }
}

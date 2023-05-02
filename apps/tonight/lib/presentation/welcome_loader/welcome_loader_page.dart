import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:tonight/application/profile/profile_bloc.dart';
import 'package:tonight/application/push_notifications/push_notifications_cubit.dart';
import 'package:tonight/application/tonight_events/bloc/tonight_events_bloc.dart';
import 'package:tonight/application/welcome_loading/welcome_loading_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_upgrade_alert.dart';
import 'package:tonight/presentation/navigator/navigator_page.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/sign_in/widgets/tonight_logo.dart';
import 'package:translations/raver_translations.dart';

class WelcomeLoaderPage extends StatefulWidget {
  const WelcomeLoaderPage({Key? key}) : super(key: key);

  @override
  State<WelcomeLoaderPage> createState() => _WelcomeLoaderPageState();
}

class _WelcomeLoaderPageState extends State<WelcomeLoaderPage> {
  WelcomeLoadingCubit? _welcomeLoadingCubit;

  WelcomeLoadingCubit _initWelcomeCubit(BuildContext context) {
    _welcomeLoadingCubit = WelcomeLoadingCubit(
      pushNotificationsCubit: getIt<PushNotificationsCubit>(),
      stripe: getIt<Stripe>(),
      firebaseMessaging: getIt<FirebaseMessaging>(),
      availableFiltersCubit: context.read<AvailableFiltersCubit>(),
      userLocationCubit: context.read<UserLocationCubit>(),
      eventFavoriteCubit: context.read<EventFavoriteCubit>(),
      clubFavoriteCubit: context.read<ClubFavoriteCubit>(),
      profileBloc: context.read<ProfileBloc>(),
    );

    return _welcomeLoadingCubit!;
  }

  @override
  Widget build(BuildContext context) {
    return TonightUpgradeAlert(
      child: TonightOverlay(
        child: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) => state.map(
            initial: (_) => {},
            authenticated: (_) => {},
            unauthenticated: (_) => context.replaceRoute(const SignInRoute()),
            deleteAccountInProgress: (_) => context.loaderOverlay.show(),
            deleteAccountFailure: (_) => {
              context.showSnackbarMessage(S().serverError),
              context.loaderOverlay.hide(),
            },
            deleteAccountSuccess: (_) => {
              context.replaceRoute(const SignInRoute()),
              context.loaderOverlay.hide(),
            },
          ),
          child: BlocProvider(
            create: (ctx) => (_welcomeLoadingCubit ?? _initWelcomeCubit(ctx))
              ..loadDependencies(context),
            child: BlocBuilder<WelcomeLoadingCubit, WelcomeLoadingState>(
              builder: (context, state) {
                if (state.status.isLoading()) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: TonightLogo(height: context.height),
                    ),
                  );
                }
                final location =
                    context.read<UserLocationCubit>().state.userLocation;
                return BlocProvider(
                  create: (context) => getIt<TonightEventsBloc>()
                    ..add(TonightEventsEvent.eventsFetched(location)),
                  child: const NavigatorPage(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight_scanner/application/current_event/current_event_cubit.dart';
import 'package:tonight_scanner/application/selector_club/selector_club_cubit.dart';
import 'package:tonight_scanner/application/welcome_loader/welcome_loader_cubit.dart';
import 'package:tonight_scanner/injection.dart';
import 'package:tonight_scanner/presentation/core/ticket_logo_animation.dart';
import 'package:tonight_scanner/presentation/core/tonight_scanner_app_bar.dart';
import 'package:tonight_scanner/presentation/routes/app_router.dart';
import 'package:translations/translations.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  late CurrentEventCubit currentEventCubit;
  late SelectorClubCubit selectorClubCubit;

  @override
  Widget build(BuildContext context) {
    context.read<RemoteConfigCubit>().setupRemoteConfig();
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          bloc: context.read<AuthCubit>(),
          listener: (context, state) => state.map(
            initial: (_) {},
            authenticated: (_) => context.replaceRoute(const NavigatorRoute()),
            unauthenticated: (_) => context.replaceRoute(const SignInRoute()),
          ),
        ),
        BlocListener<NetworkCheckCubit, NetworkCheckState>(
          listener: (context, state) {
            final currentRoute = context.router.current.name;
            if (!state.isConnected && currentRoute != NetworkLostRoute.name) {
              context.pushRoute(const NetworkLostRoute());
            }
          },
        ),
      ],
      child: BlocConsumer<RemoteConfigCubit, RemoteConfigState>(
        listener: (context, state) {
          final currentRoute = context.router.current.name;
          if (state.status.isFailure() &&
              currentRoute != NetworkLostRoute.name) {
            context.replaceRoute(const NetworkLostRoute());
          }
        },
        builder: (context, state) {
          if (state.status.isInitial() || state.status.isFailure()) {
            return Container();
          }

          if (state.status.isLoading()) {
            return const TicketLogoAnimation();
          }

          return MultiBlocProvider(
            providers: [
              BlocProvider(
                lazy: false,
                create: (ctx) {
                  currentEventCubit = getIt<CurrentEventCubit>();
                  return currentEventCubit;
                },
              ),
              BlocProvider(
                lazy: false,
                create: (ctx) {
                  selectorClubCubit = getIt<SelectorClubCubit>();
                  return selectorClubCubit;
                },
              ),
              BlocProvider(
                create: (ctx) => getIt<WelcomeLoaderCubit>(
                  param1: currentEventCubit,
                  param2: selectorClubCubit,
                )..loadData(),
              ),
            ],
            child: BlocConsumer<WelcomeLoaderCubit, WelcomeLoaderState>(
              listener: (context, state) {
                if (state.status.isFailure() &&
                    context.router.current.name != FailureRoute.name) {
                  context.pushRoute(
                    FailureRoute(
                      retryCallback: () =>
                          context.read<WelcomeLoaderCubit>().loadData(),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state.status.isInitial() || state.status.isFailure()) {
                  return Container();
                }

                if (state.status.isLoading()) {
                  return const TicketLogoAnimation();
                }

                return LoaderOverlay(
                  useDefaultLoading: false,
                  overlayOpacity: .7,
                  overlayColor: context.shadowColor,
                  overlayWidget: const TicketLogoAnimation(),
                  child: AutoTabsScaffold(
                    resizeToAvoidBottomInset: false,
                    appBarBuilder: (_, tabsRouter) =>
                        const TonightScannerAppBar(),
                    routes: const [
                      EventRoute(),
                      SettingsRoute(),
                    ],
                    bottomNavigationBuilder: (_, tabsRouter) {
                      return NavigationBar(
                        selectedIndex: tabsRouter.activeIndex,
                        onDestinationSelected: tabsRouter.setActiveIndex,
                        destinations: [
                          NavigationDestination(
                            icon: const Icon(FontAwesomeIcons.fire),
                            label: S().events(1),
                          ),
                          NavigationDestination(
                            icon: const Icon(FontAwesomeIcons.gear),
                            label: S().settings,
                          ),
                        ],
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

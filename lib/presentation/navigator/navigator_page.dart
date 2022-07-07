import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/club_info/club_info_cubit.dart';
import 'package:raver_partners/application/overview/overview_cubit.dart';
import 'package:raver_partners/application/welcome_loader/welcome_loader_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
import 'package:raver_partners/presentation/core/raver_partners_fab.dart';
import 'package:raver_partners/presentation/core/selected_page.dart';
import 'package:raver_partners/presentation/core/ticket_logo_animation.dart';
import 'package:raver_partners/presentation/drawer/raver_partners_drawer.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  var selectedPage = SelectedPage.overview;

  late ClubInfoCubit clubInfoCubit;
  late OverviewCubit overviewCubit;

  @override
  Widget build(BuildContext context) {
    context.read<RemoteConfigCubit>().setupRemoteConfig();

    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              authenticated: (_) =>
                  context.replaceRoute(const NavigatorRoute()),
              unauthenticated: (_) {
                context.replaceRoute(const SignInRoute());
              },
            );
          },
        ),
        BlocListener<NetworkCheckCubit, NetworkCheckState>(
          bloc: context.read<NetworkCheckCubit>(),
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
                create: (context) {
                  clubInfoCubit = getIt<ClubInfoCubit>();
                  return clubInfoCubit;
                },
              ),
              BlocProvider(
                lazy: false,
                create: (context) {
                  overviewCubit = getIt<OverviewCubit>();
                  return overviewCubit;
                },
              ),
              BlocProvider(
                create: (context) => getIt<WelcomeLoaderCubit>(
                  param1: overviewCubit,
                  param2: clubInfoCubit,
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
                  return const SizedBox();
                }

                if (state.status.isLoading()) {
                  return const TicketLogoAnimation();
                }

                if (state.status.isFailure()) {
                  return Container();
                }

                return AutoTabsScaffold(
                  resizeToAvoidBottomInset: false,
                  appBarBuilder: (_, tabsRouter) => const RaverPartnersAppBar(),
                  routes: const [
                    OverviewRoute(),
                    EventsRoute(),
                    RewardsRoute(),
                    SelectorsRoute(),
                  ],
                  drawer: const RaverPartnersDrawer(),
                  floatingActionButton: selectedPage != SelectedPage.overview
                      ? RaverPartnersFab(selectedPage: selectedPage)
                      : null,
                  bottomNavigationBuilder: (_, tabsRouter) {
                    return NavigationBar(
                      selectedIndex: tabsRouter.activeIndex,
                      onDestinationSelected: (i) {
                        setState(() {
                          switch (i) {
                            case (0):
                              selectedPage = SelectedPage.overview;
                              break;
                            case (1):
                              selectedPage = SelectedPage.events;
                              break;
                            case (2):
                              selectedPage = SelectedPage.rewards;
                              break;
                            case (3):
                              selectedPage = SelectedPage.selectors;
                              break;
                          }
                        });
                        tabsRouter.setActiveIndex(i);
                      },
                      destinations: [
                        NavigationDestination(
                          icon: const FaIcon(FontAwesomeIcons.chartSimple),
                          label: S().overview,
                        ),
                        NavigationDestination(
                          icon: const FaIcon(FontAwesomeIcons.list),
                          label: S().events(2),
                        ),
                        NavigationDestination(
                          icon: const FaIcon(FontAwesomeIcons.trophy),
                          label: S().rewards(2),
                        ),
                        NavigationDestination(
                          icon: const FaIcon(FontAwesomeIcons.userGroup),
                          label: S().selectors(2),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}

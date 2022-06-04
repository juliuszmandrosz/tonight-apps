import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/welcome_loader/welcome_loader_cubit.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
import 'package:raver_partners/presentation/drawer/raver_partners_drawer.dart';
import 'package:raver_partners/presentation/core/raver_partners_speed_dial.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<WelcomeLoaderCubit>().loadData();
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              authenticated: (_) =>
                  AutoRouter.of(context).replace(const NavigatorRoute()),
              unauthenticated: (_) {
                context.read<WelcomeLoaderCubit>().resetState();
                AutoRouter.of(context).replace(const AuthRoute());
              },
            );
          },
        ),
        BlocListener<NetworkCheckCubit, NetworkCheckState>(
          bloc: context.read<NetworkCheckCubit>(),
          listener: (context, state) {
            if (!state.isConnected) {
              AutoRouter.of(context).push(const NetworkLostRoute());
            }
          },
        ),
      ],
      child: BlocConsumer<WelcomeLoaderCubit, WelcomeLoaderState>(
        listener: (context, state) {
          if (state.remoteConfigStatus.isFailure()) {
            AutoRouter.of(context).replace(const NetworkLostRoute());
          }
        },
        builder: (context, state) {
          final loaderState = context.read<WelcomeLoaderCubit>().state;

          if (loaderState.welcomeLoaderStatus.isInitial()) {
            return const SizedBox();
          }

          if (loaderState.welcomeLoaderStatus.isLoading()) {
            return const Center(child: CircularProgressIndicator());
          }

          if (loaderState.welcomeLoaderStatus.isFailure()) {
            return Center(child: Text(S().serverError));
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
            floatingActionButton: const RaverPartnersSpeedDial(),
            bottomNavigationBuilder: (_, tabsRouter) {
              return NavigationBar(
                selectedIndex: tabsRouter.activeIndex,
                onDestinationSelected: tabsRouter.setActiveIndex,
                destinations: [
                  const NavigationDestination(
                    icon: FaIcon(FontAwesomeIcons.chartSimple),
                    // TODO - add translation
                    label: 'Overview',
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
  }
}

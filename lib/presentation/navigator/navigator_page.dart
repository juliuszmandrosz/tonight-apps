import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/welcome_loader/welcome_loader_cubit.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
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
              AutoRouter.of(context).replace(const NetworkLostRoute());
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
          final welcomeLoaderCubit = context.read<WelcomeLoaderCubit>();

          if (welcomeLoaderCubit.isStatusInitial) {
            return const SizedBox();
          }

          if (welcomeLoaderCubit.isStatusLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (welcomeLoaderCubit.isStatusFailure) {
            return Center(child: Text(S().serverError));
          }

          return AutoTabsScaffold(
            resizeToAvoidBottomInset: false,
            appBarBuilder: (_, tabsRouter) => RaverPartnersAppBar(
              actions: [
                IconButton(
                  onPressed: () {
                    context.read<WelcomeLoaderCubit>().resetState();
                    context.read<AuthCubit>().signOut();
                    AutoRouter.of(context).replace(const AuthRoute());
                  },
                  icon: const FaIcon(FontAwesomeIcons.signOutAlt),
                )
              ],
            ),
            routes: const [
              EventsRoute(),
              RewardsRoute(),
              SelectorsRoute(),
            ],
            floatingActionButton: const RaverPartnersSpeedDial(),
            bottomNavigationBuilder: (_, tabsRouter) {
              return NavigationBar(
                selectedIndex: tabsRouter.activeIndex,
                onDestinationSelected: tabsRouter.setActiveIndex,
                destinations: [
                  NavigationDestination(
                    icon: const Icon(FontAwesomeIcons.list),
                    label: S().events(2),
                  ),
                  NavigationDestination(
                    icon: const Icon(FontAwesomeIcons.trophy),
                    label: S().rewards(2),
                  ),
                  NavigationDestination(
                      icon: const Icon(FontAwesomeIcons.userFriends),
                      label: S().selectors(2)),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/navigator/widgets/sign_out_button.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<NetworkCheckCubit, NetworkCheckState>(
          bloc: context.read<NetworkCheckCubit>(),
          listener: (context, state) {
            if (!state.isConnected) {
              AutoRouter.of(context).push(const NetworkLostRoute());
            }
          },
        ),
        BlocListener<AuthCubit, AuthState>(
          bloc: context.read<AuthCubit>(),
          listener: (context, state) => state.map(
              initial: (_) {},
              authenticated: (_) =>
                  AutoRouter.of(context).replace(const WelcomeLoaderRoute()),
              unauthenticated: (_) =>
                  AutoRouter.of(context).replace(const SignInRoute())),
        )
      ],
      child: AutoTabsScaffold(
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: selectedIndex == 4 ? const SignOutButton() : null,
        appBarBuilder: (_, tabsRouter) => const RaverAppBar(),
        routes: const [
          EventsRoute(),
          ClubsRoute(),
          TicketsRoute(),
          FavoritesRoute(),
          ProfileRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: (i) {
              setState(() {
                selectedIndex = i;
              });
              tabsRouter.setActiveIndex(i);
            },
            destinations: [
              NavigationDestination(
                icon: const FaIcon(FontAwesomeIcons.fire),
                label: S().events(2),
              ),
              NavigationDestination(
                icon: const FaIcon(FontAwesomeIcons.city),
                label: S().clubs(2),
              ),
              NavigationDestination(
                icon: const FaIcon(FontAwesomeIcons.ticket),
                label: S().tickets(2),
              ),
              NavigationDestination(
                icon: const FaIcon(FontAwesomeIcons.solidHeart),
                label: S().favorites,
              ),
              NavigationDestination(
                icon: const FaIcon(FontAwesomeIcons.solidUser),
                label: S().profile,
              ),
            ],
          );
        },
      ),
    );
  }
}

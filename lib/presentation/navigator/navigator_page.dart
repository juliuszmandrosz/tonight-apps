import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_scanner/presentation/core/raver_scanner_app_bar.dart';
import 'package:raver_scanner/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<CurrentEventCubit>().getCurrentEvent();
    final theme = Theme.of(context);
    return MultiBlocListener(
      listeners: [
        // TODO - add network check here
        BlocListener<AuthCubit, AuthState>(
          bloc: context.read<AuthCubit>(),
          listener: (context, state) => state.map(
              initial: (_) {},
              authenticated: (_) =>
                  AutoRouter.of(context).replace(const NavigatorRoute()),
              unauthenticated: (_) =>
                  AutoRouter.of(context).replace(const SignInRoute())),
        )
      ],
      child: AutoTabsScaffold(
        appBarBuilder: (_, tabsRouter) => RaverScannerAppBar(
          actions: [
            IconButton(
              onPressed: () {
                context.read<AuthCubit>().signOut();
                AutoRouter.of(context).replace(const SignInRoute());
              },
              icon: FaIcon(
                FontAwesomeIcons.signOutAlt,
                color: theme.colorScheme.background,
              ),
            )
          ],
        ),
        routes: const [
          EventRoute(),
          SettingsRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              BottomNavigationBarItem(
                icon: const FaIcon(
                  FontAwesomeIcons.fire,
                ),
                label: S().events(1),
              ),
              BottomNavigationBarItem(
                icon: const FaIcon(
                  FontAwesomeIcons.cog,
                ),
                label: S().settings,
              ),
            ],
          );
        },
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class tonightNavigator extends StatefulWidget {
  const tonightNavigator({Key? key}) : super(key: key);

  @override
  State<tonightNavigator> createState() => _tonightNavigatorState();
}

class _tonightNavigatorState extends State<tonightNavigator> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => const TonightAppBar(),
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
    );
  }
}

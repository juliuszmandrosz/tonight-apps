import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/drawer/tonight_drawer.dart';
import 'package:tonight/presentation/navigator/tonight_navigation_destinations.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      drawer: const TonightDrawer(),
      appBarBuilder: (_, tabsRouter) => const TonightAppBar(),
      routes: const [
        WallPhotosRoute(),
        DiscoverRoute(),
        WallPhotosRoute(),
        FavoritesRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: (i) {
            if (i == TonightNavigationDestinations.add.index) {
              context.pushRoute(const AddWallPhotoRoute());
              i = selectedIndex;
            }

            setState(() {
              selectedIndex = i;
            });
            tabsRouter.setActiveIndex(i);
          },
          destinations: [
            const NavigationDestination(
              icon: FaIcon(FontAwesomeIcons.fire),
              label: 'Tonight',
            ),
            const NavigationDestination(
              icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
              // TODO - add translation
              label: 'Odkrywaj',
            ),
            NavigationDestination(
              icon: const FaIcon(FontAwesomeIcons.plus),
              label: S().add,
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

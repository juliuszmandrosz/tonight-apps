import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      drawer: const TonightDrawer(),
      appBarBuilder: _buildAppBar,
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
          onDestinationSelected: (i) async {
            if (i == TonightNavigationDestination.add.index) {
              if (context.mounted) {
                context.pushRoute(
                  const WallPhotoCameraPreviewRoute(),
                );
                i = _selectedIndex;
              }
            }

            setState(() {
              _selectedIndex = i;
            });
            tabsRouter.setActiveIndex(i);
          },
          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons/icon_logo_transparent.svg',
                semanticsLabel: 'Icon Logo',
                height: 32,
              ),
              label: 'Tonight',
            ),
            const NavigationDestination(
              icon: FaIcon(FontAwesomeIcons.compass),
              // TODO - add translation
              label: 'Odkrywaj',
            ),
            const NavigationDestination(
              icon: FaIcon(
                FontAwesomeIcons.paperPlane,
              ),
              // TODO - add translation
              label: 'Opublikuj',
            ),
            NavigationDestination(
              icon: const FaIcon(FontAwesomeIcons.heart),
              label: S().favorites,
            ),
            NavigationDestination(
              icon: const FaIcon(FontAwesomeIcons.user),
              label: S().profile,
            ),
          ],
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(
    BuildContext context,
    TabsRouter tabsRouter,
  ) {
    if (tabsRouter.activeIndex == TonightNavigationDestination.discover.index) {
      return PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).padding.top),
        child: Container(
          color: context.surfaceColor,
          height: MediaQuery.of(context).padding.top,
        ),
      );
    }
    return const TonightAppBar();
  }
}

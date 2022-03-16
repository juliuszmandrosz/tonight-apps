import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_partners/generated/l10n.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => const RaverPartnersAppBar(),
      routes: const [
        DashboardRoute(),
        EventsRoute(),
        RewardsRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.dashboard),
              label: S().dashboard,
            ),
            BottomNavigationBarItem(
              icon: const Icon(FontAwesomeIcons.list),
              label: S().events(2),
            ),
            BottomNavigationBarItem(
              icon: const Icon(FontAwesomeIcons.trophy),
              label: S().rewards(2),
            ),
            BottomNavigationBarItem(
              icon: const FaIcon(Icons.settings),
              label: S().settings,
            ),
          ],
        );
      },
    );
  }
}

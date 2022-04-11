import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/add_event/add_event_page.dart';
import 'package:raver_partners/presentation/dashboard/dashboard_page.dart';
import 'package:raver_partners/presentation/events/events_page.dart';
import 'package:raver_partners/presentation/navigator/navigator_page.dart';
import 'package:raver_partners/presentation/rewards/rewards_page.dart';
import 'package:raver_partners/presentation/settings/settings_page.dart';
import 'package:raver_partners/presentation/splash/splash_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(
      page: NavigatorPage,
      children: [
        AutoRoute(page: DashboardPage),
        AutoRoute(page: EventsPage),
        AutoRoute(page: RewardsPage),
        AutoRoute(page: SettingsPage),
      ],
    ),
    AutoRoute(page: AddEventPage),
  ],
)
class AppRouter extends _$AppRouter {}

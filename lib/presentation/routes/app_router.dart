import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/domain/clubs/club_overview/club_overview_entity.dart';
import 'package:raver/presentation/home/clubs_tab/club_page.dart';
import 'package:raver/presentation/home/clubs_tab/clubs_page.dart';
import 'package:raver/presentation/home/events_tab/event_page.dart';
import 'package:raver/presentation/home/events_tab/events_page.dart';
import 'package:raver/presentation/home/home_page.dart';
import 'package:raver/presentation/navigator/navigator_page.dart';
import 'package:raver/presentation/sign_in/sign_in_page.dart';
import 'package:raver/presentation/splash/splash_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage),
    // TODO - fix bloc listener in splash page and change initial route
    AutoRoute(page: SignInPage, initial: true),
    AutoRoute(
      name: "NavigatorRouter",
      page: NavigatorPage,
      children: [
        AutoRoute(
          page: HomePage,
          path: 'home',
          name: 'HomeRouter',
          children: [
            AutoRoute(
              page: ClubsPage,
              name: "ClubRouter",
              children: [
                AutoRoute(page: ClubPage),
              ],
            ),
            AutoRoute(
              page: EventsPage,
              name: "EventRouter",
              children: [
                AutoRoute(page: EventPage),
              ],
            ),
          ],
        ),
      ],
    )
  ],
)
class AppRouter extends _$AppRouter {}

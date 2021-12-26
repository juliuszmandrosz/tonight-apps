import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/clubs/clubs_page.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/presentation/clubs/club_page.dart';
import 'package:raver/presentation/events/event_page.dart';
import 'package:raver/presentation/events/events_page.dart';
import 'package:raver/presentation/sign_in/sign_in_page.dart';
import 'package:raver/presentation/splash/splash_page.dart';

import 'package:raver/presentation/navigator/navigator_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(
      name: "NavigatorRouter",
      page: NavigatorPage,
      children: [
        AutoRoute(
          page: EmptyRouterPage,
          path: 'clubs',
          name: 'ClubsRouter',
          children: [
            AutoRoute(page: ClubsPage),
            AutoRoute(page: ClubPage),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'events',
          name: 'EventsRouter',
          children: [
            AutoRoute(page: EventsPage),
            AutoRoute(page: EventPage),
          ],
        ),
      ],
    )
  ],
)
class AppRouter extends _$AppRouter {}

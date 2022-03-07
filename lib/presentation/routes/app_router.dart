import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/domain/events/event_entity.dart';
import 'package:raver/presentation/events/event_details_page.dart';
import 'package:raver/presentation/home/clubs_tab/club_page.dart';
import 'package:raver/presentation/home/home_page.dart';
import 'package:raver/presentation/navigator/navigator_page.dart';
import 'package:raver/presentation/sign_in/sign_in_page.dart';
import 'package:raver/presentation/splash/splash_page.dart';
import 'package:raver/presentation/tickets/ticket_overview_page.dart';

import 'hero_empty_router_page.dart';

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
          page: TicketOverviewPage,
          path: 'tickets',
          name: 'TicketsRouter',
        )
      ],
    ),
    AutoRoute(
      page: HeroEmptyRouterPage,
      path: 'home',
      name: 'HomeRouter',
      children: [
        AutoRoute(
          path: '',
          page: HomePage,
        ),
      ],
    ),
    AutoRoute(page: EventDetailsPage),
    AutoRoute(page: ClubPage),
  ],
)
class AppRouter extends _$AppRouter {}

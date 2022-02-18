// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    SignInRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SignInPage());
    },
    NavigatorRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const NavigatorPage());
    },
    HomeRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: HeroEmptyRouterPage());
    },
    TicketsRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TicketOverviewPage());
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    ClubRoute.name: (routeData) {
      final args = routeData.argsAs<ClubRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ClubPage(key: args.key, clubOverview: args.clubOverview));
    },
    EventRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EventPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        RouteConfig(NavigatorRouter.name, path: '/navigator-page', children: [
          RouteConfig(HomeRouter.name,
              path: 'home',
              parent: NavigatorRouter.name,
              children: [
                RouteConfig(HomeRoute.name, path: '', parent: HomeRouter.name),
                RouteConfig(ClubRoute.name,
                    path: 'club-page', parent: HomeRouter.name),
                RouteConfig(EventRoute.name,
                    path: 'event-page', parent: HomeRouter.name)
              ]),
          RouteConfig(TicketsRouter.name,
              path: 'tickets', parent: NavigatorRouter.name)
        ])
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [NavigatorPage]
class NavigatorRouter extends PageRouteInfo<void> {
  const NavigatorRouter({List<PageRouteInfo>? children})
      : super(NavigatorRouter.name,
            path: '/navigator-page', initialChildren: children);

  static const String name = 'NavigatorRouter';
}

/// generated route for
/// [HeroEmptyRouterPage]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter({List<PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [TicketOverviewPage]
class TicketsRouter extends PageRouteInfo<void> {
  const TicketsRouter() : super(TicketsRouter.name, path: 'tickets');

  static const String name = 'TicketsRouter';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [ClubPage]
class ClubRoute extends PageRouteInfo<ClubRouteArgs> {
  ClubRoute({Key? key, required ClubOverview clubOverview})
      : super(ClubRoute.name,
            path: 'club-page',
            args: ClubRouteArgs(key: key, clubOverview: clubOverview));

  static const String name = 'ClubRoute';
}

class ClubRouteArgs {
  const ClubRouteArgs({this.key, required this.clubOverview});

  final Key? key;

  final ClubOverview clubOverview;

  @override
  String toString() {
    return 'ClubRouteArgs{key: $key, clubOverview: $clubOverview}';
  }
}

/// generated route for
/// [EventPage]
class EventRoute extends PageRouteInfo<void> {
  const EventRoute() : super(EventRoute.name, path: 'event-page');

  static const String name = 'EventRoute';
}

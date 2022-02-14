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
          routeData: routeData, child: const HomePage());
    },
    ClubRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ClubsPage());
    },
    EventRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EventsPage());
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
                RouteConfig(ClubRouter.name,
                    path: 'clubs-page',
                    parent: HomeRouter.name,
                    children: [
                      RouteConfig(ClubRoute.name,
                          path: 'club-page', parent: ClubRouter.name)
                    ]),
                RouteConfig(EventRouter.name,
                    path: 'events-page',
                    parent: HomeRouter.name,
                    children: [
                      RouteConfig(EventRoute.name,
                          path: 'event-page', parent: EventRouter.name)
                    ])
              ])
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
/// [HomePage]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter({List<PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [ClubsPage]
class ClubRouter extends PageRouteInfo<void> {
  const ClubRouter({List<PageRouteInfo>? children})
      : super(ClubRouter.name, path: 'clubs-page', initialChildren: children);

  static const String name = 'ClubRouter';
}

/// generated route for
/// [EventsPage]
class EventRouter extends PageRouteInfo<void> {
  const EventRouter({List<PageRouteInfo>? children})
      : super(EventRouter.name, path: 'events-page', initialChildren: children);

  static const String name = 'EventRouter';
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

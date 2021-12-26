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
    ClubsRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    EventsRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    ClubsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ClubsPage());
    },
    ClubRoute.name: (routeData) {
      final args = routeData.argsAs<ClubRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ClubPage(key: args.key, club: args.club));
    },
    EventsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EventsPage());
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
          RouteConfig(ClubsRouter.name,
              path: 'clubs',
              parent: NavigatorRouter.name,
              children: [
                RouteConfig(ClubsRoute.name,
                    path: 'clubs-page', parent: ClubsRouter.name),
                RouteConfig(ClubRoute.name,
                    path: 'club-page', parent: ClubsRouter.name)
              ]),
          RouteConfig(EventsRouter.name,
              path: 'events',
              parent: NavigatorRouter.name,
              children: [
                RouteConfig(EventsRoute.name,
                    path: 'events-page', parent: EventsRouter.name),
                RouteConfig(EventRoute.name,
                    path: 'event-page', parent: EventsRouter.name)
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
/// [EmptyRouterPage]
class ClubsRouter extends PageRouteInfo<void> {
  const ClubsRouter({List<PageRouteInfo>? children})
      : super(ClubsRouter.name, path: 'clubs', initialChildren: children);

  static const String name = 'ClubsRouter';
}

/// generated route for
/// [EmptyRouterPage]
class EventsRouter extends PageRouteInfo<void> {
  const EventsRouter({List<PageRouteInfo>? children})
      : super(EventsRouter.name, path: 'events', initialChildren: children);

  static const String name = 'EventsRouter';
}

/// generated route for
/// [ClubsPage]
class ClubsRoute extends PageRouteInfo<void> {
  const ClubsRoute() : super(ClubsRoute.name, path: 'clubs-page');

  static const String name = 'ClubsRoute';
}

/// generated route for
/// [ClubPage]
class ClubRoute extends PageRouteInfo<ClubRouteArgs> {
  ClubRoute({Key? key, required Club club})
      : super(ClubRoute.name,
            path: 'club-page', args: ClubRouteArgs(key: key, club: club));

  static const String name = 'ClubRoute';
}

class ClubRouteArgs {
  const ClubRouteArgs({this.key, required this.club});

  final Key? key;

  final Club club;

  @override
  String toString() {
    return 'ClubRouteArgs{key: $key, club: $club}';
  }
}

/// generated route for
/// [EventsPage]
class EventsRoute extends PageRouteInfo<void> {
  const EventsRoute() : super(EventsRoute.name, path: 'events-page');

  static const String name = 'EventsRoute';
}

/// generated route for
/// [EventPage]
class EventRoute extends PageRouteInfo<void> {
  const EventRoute() : super(EventRoute.name, path: 'event-page');

  static const String name = 'EventRoute';
}

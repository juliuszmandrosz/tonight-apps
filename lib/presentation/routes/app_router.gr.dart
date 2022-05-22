// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    AuthRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AuthPage());
    },
    NavigatorRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const NavigatorPage());
    },
    ScannerRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ScannerPage());
    },
    NetworkLostRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const NetworkLostPage());
    },
    EventRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EventPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(AuthRoute.name, path: '/auth-page'),
        RouteConfig(NavigatorRoute.name, path: '/navigator-page', children: [
          RouteConfig(EventRoute.name,
              path: 'event-page', parent: NavigatorRoute.name)
        ]),
        RouteConfig(ScannerRoute.name, path: '/scanner-page'),
        RouteConfig(NetworkLostRoute.name, path: '/network-lost-page')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute() : super(AuthRoute.name, path: '/auth-page');

  static const String name = 'AuthRoute';
}

/// generated route for
/// [NavigatorPage]
class NavigatorRoute extends PageRouteInfo<void> {
  const NavigatorRoute({List<PageRouteInfo>? children})
      : super(NavigatorRoute.name,
            path: '/navigator-page', initialChildren: children);

  static const String name = 'NavigatorRoute';
}

/// generated route for
/// [ScannerPage]
class ScannerRoute extends PageRouteInfo<void> {
  const ScannerRoute() : super(ScannerRoute.name, path: '/scanner-page');

  static const String name = 'ScannerRoute';
}

/// generated route for
/// [NetworkLostPage]
class NetworkLostRoute extends PageRouteInfo<void> {
  const NetworkLostRoute()
      : super(NetworkLostRoute.name, path: '/network-lost-page');

  static const String name = 'NetworkLostRoute';
}

/// generated route for
/// [EventPage]
class EventRoute extends PageRouteInfo<void> {
  const EventRoute() : super(EventRoute.name, path: 'event-page');

  static const String name = 'EventRoute';
}

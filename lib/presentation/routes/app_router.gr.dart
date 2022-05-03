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
    ResetPasswordRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ResetPasswordPage());
    },
    NavigatorRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const NavigatorPage());
    },
    ScannerRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ScannerPage());
    },
    EventRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EventPage());
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SettingsPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(AuthRoute.name, path: '/auth-page'),
        RouteConfig(ResetPasswordRoute.name, path: '/reset-password-page'),
        RouteConfig(NavigatorRoute.name, path: '/navigator-page', children: [
          RouteConfig(EventRoute.name,
              path: 'event-page', parent: NavigatorRoute.name),
          RouteConfig(SettingsRoute.name,
              path: 'settings-page', parent: NavigatorRoute.name)
        ]),
        RouteConfig(ScannerRoute.name, path: '/scanner-page')
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
/// [ResetPasswordPage]
class ResetPasswordRoute extends PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(ResetPasswordRoute.name, path: '/reset-password-page');

  static const String name = 'ResetPasswordRoute';
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
/// [EventPage]
class EventRoute extends PageRouteInfo<void> {
  const EventRoute() : super(EventRoute.name, path: 'event-page');

  static const String name = 'EventRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings-page');

  static const String name = 'SettingsRoute';
}

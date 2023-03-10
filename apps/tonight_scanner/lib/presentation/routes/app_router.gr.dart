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
    SignInRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const SignInPage(),
          transitionsBuilder: zoomInTransition,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    NavigatorRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const NavigatorPage(),
          transitionsBuilder: zoomInTransition,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    ScannerRoute.name: (routeData) {
      final args = routeData.argsAs<ScannerRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: ScannerPage(blocContext: args.blocContext, key: args.key),
          transitionsBuilder: slideLeftTransition,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    NetworkLostRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const NetworkLostPage(),
          transitionsBuilder: zoomInTransition,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    FailureRoute.name: (routeData) {
      final args = routeData.argsAs<FailureRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: FailurePage(retryCallback: args.retryCallback, key: args.key),
          transitionsBuilder: zoomInTransition,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    ContactRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ContactPage(),
          transitionsBuilder: slideLeftTransition,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
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
        RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        RouteConfig(NavigatorRoute.name, path: '/navigator-page', children: [
          RouteConfig(EventRoute.name,
              path: 'event-page', parent: NavigatorRoute.name),
          RouteConfig(SettingsRoute.name,
              path: 'settings-page', parent: NavigatorRoute.name)
        ]),
        RouteConfig(ScannerRoute.name, path: '/scanner-page'),
        RouteConfig(NetworkLostRoute.name, path: '/network-lost-page'),
        RouteConfig(FailureRoute.name, path: '/failure-page'),
        RouteConfig(ContactRoute.name, path: '/contact-page')
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
class NavigatorRoute extends PageRouteInfo<void> {
  const NavigatorRoute({List<PageRouteInfo>? children})
      : super(NavigatorRoute.name,
            path: '/navigator-page', initialChildren: children);

  static const String name = 'NavigatorRoute';
}

/// generated route for
/// [ScannerPage]
class ScannerRoute extends PageRouteInfo<ScannerRouteArgs> {
  ScannerRoute({required BuildContext blocContext, Key? key})
      : super(ScannerRoute.name,
            path: '/scanner-page',
            args: ScannerRouteArgs(blocContext: blocContext, key: key));

  static const String name = 'ScannerRoute';
}

class ScannerRouteArgs {
  const ScannerRouteArgs({required this.blocContext, this.key});

  final BuildContext blocContext;

  final Key? key;

  @override
  String toString() {
    return 'ScannerRouteArgs{blocContext: $blocContext, key: $key}';
  }
}

/// generated route for
/// [NetworkLostPage]
class NetworkLostRoute extends PageRouteInfo<void> {
  const NetworkLostRoute()
      : super(NetworkLostRoute.name, path: '/network-lost-page');

  static const String name = 'NetworkLostRoute';
}

/// generated route for
/// [FailurePage]
class FailureRoute extends PageRouteInfo<FailureRouteArgs> {
  FailureRoute({required Function retryCallback, Key? key})
      : super(FailureRoute.name,
            path: '/failure-page',
            args: FailureRouteArgs(retryCallback: retryCallback, key: key));

  static const String name = 'FailureRoute';
}

class FailureRouteArgs {
  const FailureRouteArgs({required this.retryCallback, this.key});

  final Function retryCallback;

  final Key? key;

  @override
  String toString() {
    return 'FailureRouteArgs{retryCallback: $retryCallback, key: $key}';
  }
}

/// generated route for
/// [ContactPage]
class ContactRoute extends PageRouteInfo<void> {
  const ContactRoute() : super(ContactRoute.name, path: '/contact-page');

  static const String name = 'ContactRoute';
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

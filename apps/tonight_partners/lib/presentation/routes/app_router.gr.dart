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
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
        transitionsBuilder: zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NavigatorRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const NavigatorPage(),
        transitionsBuilder: zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AddEventRoute.name: (routeData) {
      final args = routeData.argsAs<AddEventRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: AddEventPage(
          blocContext: args.blocContext,
          key: args.key,
        ),
        transitionsBuilder: slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AddRewardRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const AddRewardPage(),
        transitionsBuilder: slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AddEditTicketPoolRoute.name: (routeData) {
      final args = routeData.argsAs<AddEditTicketPoolRouteArgs>();
      return CustomPage<TicketPool>(
        routeData: routeData,
        child: AddEditTicketPoolPage(
          currentTicketPools: args.currentTicketPools,
          editingTicketPool: args.editingTicketPool,
          blocContext: args.blocContext,
          key: args.key,
        ),
        transitionsBuilder: slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventOverviewRoute.name: (routeData) {
      final args = routeData.argsAs<EventOverviewRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: EventOverviewPage(
          blocContext: args.blocContext,
          event: args.event,
          key: args.key,
        ),
        transitionsBuilder: zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PastEventDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PastEventDetailsRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: PastEventDetailsPage(
          event: args.event,
          key: args.key,
        ),
        transitionsBuilder: zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PostponeEventRoute.name: (routeData) {
      final args = routeData.argsAs<PostponeEventRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: PostponeEventPage(
          event: args.event,
          key: args.key,
        ),
        transitionsBuilder: slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    InviteSelectorRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const InviteSelectorPage(),
        transitionsBuilder: slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NetworkLostRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const NetworkLostPage(),
        transitionsBuilder: zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ContactRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ContactPage(),
        transitionsBuilder: slideRightTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DiscountsRoute.name: (routeData) {
      final args = routeData.argsAs<DiscountsRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: DiscountsPage(
          blocContext: args.blocContext,
          key: args.key,
        ),
        transitionsBuilder: slideRightTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FailureRoute.name: (routeData) {
      final args = routeData.argsAs<FailureRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: FailurePage(
          retryCallback: args.retryCallback,
          key: args.key,
        ),
        transitionsBuilder: zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OverviewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const OverviewPage(),
      );
    },
    EventsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EventsPage(),
      );
    },
    RewardsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RewardsPage(),
      );
    },
    SelectorsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SelectorsPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        RouteConfig(
          NavigatorRoute.name,
          path: '/navigator-page',
          children: [
            RouteConfig(
              OverviewRoute.name,
              path: 'overview-page',
              parent: NavigatorRoute.name,
            ),
            RouteConfig(
              EventsRoute.name,
              path: 'events-page',
              parent: NavigatorRoute.name,
            ),
            RouteConfig(
              RewardsRoute.name,
              path: 'rewards-page',
              parent: NavigatorRoute.name,
            ),
            RouteConfig(
              SelectorsRoute.name,
              path: 'selectors-page',
              parent: NavigatorRoute.name,
            ),
          ],
        ),
        RouteConfig(
          AddEventRoute.name,
          path: '/add-event-page',
        ),
        RouteConfig(
          AddRewardRoute.name,
          path: '/add-reward-page',
        ),
        RouteConfig(
          AddEditTicketPoolRoute.name,
          path: '/add-edit-ticket-pool-page',
        ),
        RouteConfig(
          EventOverviewRoute.name,
          path: '/event-overview-page',
        ),
        RouteConfig(
          PastEventDetailsRoute.name,
          path: '/past-event-details-page',
        ),
        RouteConfig(
          PostponeEventRoute.name,
          path: '/postpone-event-page',
        ),
        RouteConfig(
          InviteSelectorRoute.name,
          path: '/invite-selector-page',
        ),
        RouteConfig(
          NetworkLostRoute.name,
          path: '/network-lost-page',
        ),
        RouteConfig(
          ContactRoute.name,
          path: '/contact-page',
        ),
        RouteConfig(
          DiscountsRoute.name,
          path: '/discounts-page',
        ),
        RouteConfig(
          FailureRoute.name,
          path: '/failure-page',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [NavigatorPage]
class NavigatorRoute extends PageRouteInfo<void> {
  const NavigatorRoute({List<PageRouteInfo>? children})
      : super(
          NavigatorRoute.name,
          path: '/navigator-page',
          initialChildren: children,
        );

  static const String name = 'NavigatorRoute';
}

/// generated route for
/// [AddEventPage]
class AddEventRoute extends PageRouteInfo<AddEventRouteArgs> {
  AddEventRoute({
    required BuildContext blocContext,
    Key? key,
  }) : super(
          AddEventRoute.name,
          path: '/add-event-page',
          args: AddEventRouteArgs(
            blocContext: blocContext,
            key: key,
          ),
        );

  static const String name = 'AddEventRoute';
}

class AddEventRouteArgs {
  const AddEventRouteArgs({
    required this.blocContext,
    this.key,
  });

  final BuildContext blocContext;

  final Key? key;

  @override
  String toString() {
    return 'AddEventRouteArgs{blocContext: $blocContext, key: $key}';
  }
}

/// generated route for
/// [AddRewardPage]
class AddRewardRoute extends PageRouteInfo<void> {
  const AddRewardRoute()
      : super(
          AddRewardRoute.name,
          path: '/add-reward-page',
        );

  static const String name = 'AddRewardRoute';
}

/// generated route for
/// [AddEditTicketPoolPage]
class AddEditTicketPoolRoute extends PageRouteInfo<AddEditTicketPoolRouteArgs> {
  AddEditTicketPoolRoute({
    required List<TicketPool> currentTicketPools,
    required Option<TicketPool> editingTicketPool,
    required BuildContext blocContext,
    Key? key,
  }) : super(
          AddEditTicketPoolRoute.name,
          path: '/add-edit-ticket-pool-page',
          args: AddEditTicketPoolRouteArgs(
            currentTicketPools: currentTicketPools,
            editingTicketPool: editingTicketPool,
            blocContext: blocContext,
            key: key,
          ),
        );

  static const String name = 'AddEditTicketPoolRoute';
}

class AddEditTicketPoolRouteArgs {
  const AddEditTicketPoolRouteArgs({
    required this.currentTicketPools,
    required this.editingTicketPool,
    required this.blocContext,
    this.key,
  });

  final List<TicketPool> currentTicketPools;

  final Option<TicketPool> editingTicketPool;

  final BuildContext blocContext;

  final Key? key;

  @override
  String toString() {
    return 'AddEditTicketPoolRouteArgs{currentTicketPools: $currentTicketPools, editingTicketPool: $editingTicketPool, blocContext: $blocContext, key: $key}';
  }
}

/// generated route for
/// [EventOverviewPage]
class EventOverviewRoute extends PageRouteInfo<EventOverviewRouteArgs> {
  EventOverviewRoute({
    required BuildContext blocContext,
    required Event event,
    Key? key,
  }) : super(
          EventOverviewRoute.name,
          path: '/event-overview-page',
          args: EventOverviewRouteArgs(
            blocContext: blocContext,
            event: event,
            key: key,
          ),
        );

  static const String name = 'EventOverviewRoute';
}

class EventOverviewRouteArgs {
  const EventOverviewRouteArgs({
    required this.blocContext,
    required this.event,
    this.key,
  });

  final BuildContext blocContext;

  final Event event;

  final Key? key;

  @override
  String toString() {
    return 'EventOverviewRouteArgs{blocContext: $blocContext, event: $event, key: $key}';
  }
}

/// generated route for
/// [PastEventDetailsPage]
class PastEventDetailsRoute extends PageRouteInfo<PastEventDetailsRouteArgs> {
  PastEventDetailsRoute({
    required Event event,
    Key? key,
  }) : super(
          PastEventDetailsRoute.name,
          path: '/past-event-details-page',
          args: PastEventDetailsRouteArgs(
            event: event,
            key: key,
          ),
        );

  static const String name = 'PastEventDetailsRoute';
}

class PastEventDetailsRouteArgs {
  const PastEventDetailsRouteArgs({
    required this.event,
    this.key,
  });

  final Event event;

  final Key? key;

  @override
  String toString() {
    return 'PastEventDetailsRouteArgs{event: $event, key: $key}';
  }
}

/// generated route for
/// [PostponeEventPage]
class PostponeEventRoute extends PageRouteInfo<PostponeEventRouteArgs> {
  PostponeEventRoute({
    required Event event,
    Key? key,
  }) : super(
          PostponeEventRoute.name,
          path: '/postpone-event-page',
          args: PostponeEventRouteArgs(
            event: event,
            key: key,
          ),
        );

  static const String name = 'PostponeEventRoute';
}

class PostponeEventRouteArgs {
  const PostponeEventRouteArgs({
    required this.event,
    this.key,
  });

  final Event event;

  final Key? key;

  @override
  String toString() {
    return 'PostponeEventRouteArgs{event: $event, key: $key}';
  }
}

/// generated route for
/// [InviteSelectorPage]
class InviteSelectorRoute extends PageRouteInfo<void> {
  const InviteSelectorRoute()
      : super(
          InviteSelectorRoute.name,
          path: '/invite-selector-page',
        );

  static const String name = 'InviteSelectorRoute';
}

/// generated route for
/// [NetworkLostPage]
class NetworkLostRoute extends PageRouteInfo<void> {
  const NetworkLostRoute()
      : super(
          NetworkLostRoute.name,
          path: '/network-lost-page',
        );

  static const String name = 'NetworkLostRoute';
}

/// generated route for
/// [ContactPage]
class ContactRoute extends PageRouteInfo<void> {
  const ContactRoute()
      : super(
          ContactRoute.name,
          path: '/contact-page',
        );

  static const String name = 'ContactRoute';
}

/// generated route for
/// [DiscountsPage]
class DiscountsRoute extends PageRouteInfo<DiscountsRouteArgs> {
  DiscountsRoute({
    required BuildContext blocContext,
    Key? key,
  }) : super(
          DiscountsRoute.name,
          path: '/discounts-page',
          args: DiscountsRouteArgs(
            blocContext: blocContext,
            key: key,
          ),
        );

  static const String name = 'DiscountsRoute';
}

class DiscountsRouteArgs {
  const DiscountsRouteArgs({
    required this.blocContext,
    this.key,
  });

  final BuildContext blocContext;

  final Key? key;

  @override
  String toString() {
    return 'DiscountsRouteArgs{blocContext: $blocContext, key: $key}';
  }
}

/// generated route for
/// [FailurePage]
class FailureRoute extends PageRouteInfo<FailureRouteArgs> {
  FailureRoute({
    required Function retryCallback,
    Key? key,
  }) : super(
          FailureRoute.name,
          path: '/failure-page',
          args: FailureRouteArgs(
            retryCallback: retryCallback,
            key: key,
          ),
        );

  static const String name = 'FailureRoute';
}

class FailureRouteArgs {
  const FailureRouteArgs({
    required this.retryCallback,
    this.key,
  });

  final Function retryCallback;

  final Key? key;

  @override
  String toString() {
    return 'FailureRouteArgs{retryCallback: $retryCallback, key: $key}';
  }
}

/// generated route for
/// [OverviewPage]
class OverviewRoute extends PageRouteInfo<void> {
  const OverviewRoute()
      : super(
          OverviewRoute.name,
          path: 'overview-page',
        );

  static const String name = 'OverviewRoute';
}

/// generated route for
/// [EventsPage]
class EventsRoute extends PageRouteInfo<void> {
  const EventsRoute()
      : super(
          EventsRoute.name,
          path: 'events-page',
        );

  static const String name = 'EventsRoute';
}

/// generated route for
/// [RewardsPage]
class RewardsRoute extends PageRouteInfo<void> {
  const RewardsRoute()
      : super(
          RewardsRoute.name,
          path: 'rewards-page',
        );

  static const String name = 'RewardsRoute';
}

/// generated route for
/// [SelectorsPage]
class SelectorsRoute extends PageRouteInfo<void> {
  const SelectorsRoute()
      : super(
          SelectorsRoute.name,
          path: 'selectors-page',
        );

  static const String name = 'SelectorsRoute';
}

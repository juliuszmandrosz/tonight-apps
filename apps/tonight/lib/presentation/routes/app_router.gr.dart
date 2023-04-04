// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i30;
import 'package:clubs/clubs.dart' as _i38;
import 'package:events/events.dart' as _i37;
import 'package:flutter/material.dart' as _i31;
import 'package:payments/domain/domain.dart' as _i36;
import 'package:tickets/tickets.dart' as _i39;

import '../../failure/failure_page.dart' as _i17;
import '../app_settings/app_settings_page.dart' as _i21;
import '../club_details/club_details_page.dart' as _i7;
import '../club_filters/club_filters_page.dart' as _i24;
import '../clubs/clubs_page.dart' as _i26;
import '../contact/contact_page.dart' as _i22;
import '../event_date_picker/event_date_picker_page.dart' as _i9;
import '../event_filters/event_filters_page.dart' as _i5;
import '../event_review/review_page.dart' as _i20;
import '../events/events_page.dart' as _i25;
import '../events_details/event_details_page.dart' as _i6;
import '../favorites/favorites_page.dart' as _i28;
import '../invoice_data/invoice_data_page.dart' as _i16;
import '../network_lost/network_lost_page.dart' as _i4;
import '../onboarding/onboarding_page.dart' as _i15;
import '../onboarding/onboarding_user_details_page.dart' as _i14;
import '../payment_method/payment_method_page.dart' as _i23;
import '../profile/profile_page.dart' as _i29;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../ticket_checkout/ticket_checkout_page.dart' as _i10;
import '../ticket_payment_confirm/ticket_payment_confirm_page.dart' as _i12;
import '../ticket_qr/ticket_qr_page.dart' as _i8;
import '../ticket_scan_confirm/ticket_scan_confirm_page.dart' as _i13;
import '../tickets/tickets_page.dart' as _i27;
import '../update_profile_picture/update_profile_picture_page.dart' as _i19;
import '../update_username/update_username_page.dart' as _i18;
import '../vip_checkout/vip_checkout_page.dart' as _i11;
import '../welcome_loader/welcome_loader_page.dart' as _i3;
import 'page_transitions/fade_in_transition.dart' as _i34;
import 'page_transitions/slide_left_transition.dart' as _i33;
import 'page_transitions/slide_right_transition.dart' as _i35;
import 'page_transitions/zoom_in_transition.dart' as _i32;

class AppRouter extends _i30.RootStackRouter {
  AppRouter([_i31.GlobalKey<_i31.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i30.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.SignInPage(),
        transitionsBuilder: _i32.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WelcomeLoaderRoute.name: (routeData) {
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.WelcomeLoaderPage(),
        transitionsBuilder: _i32.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NetworkLostRoute.name: (routeData) {
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.NetworkLostPage(),
        transitionsBuilder: _i32.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventFiltersRoute.name: (routeData) {
      final args = routeData.argsAs<EventFiltersRouteArgs>();
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: _i5.EventFiltersPage(
          blocContext: args.blocContext,
          key: args.key,
        ),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<EventDetailsRouteArgs>(
          orElse: () => const EventDetailsRouteArgs());
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: _i6.EventDetailsPage(
          eventId: args.eventId,
          event: args.event,
          heroTag: args.heroTag,
          ticketPrice: args.ticketPrice,
          key: args.key,
        ),
        transitionsBuilder: _i34.fadeInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ClubDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ClubDetailsRouteArgs>(
          orElse: () => const ClubDetailsRouteArgs());
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: _i7.ClubDetailsPage(
          key: args.key,
          clubId: args.clubId,
          club: args.club,
          heroTag: args.heroTag,
        ),
        transitionsBuilder: _i34.fadeInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TicketQrRoute.name: (routeData) {
      final args = routeData.argsAs<TicketQrRouteArgs>();
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: _i8.TicketQrPage(
          ticket: args.ticket,
          key: args.key,
        ),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventDatePickerRoute.name: (routeData) {
      final args = routeData.argsAs<EventDatePickerRouteArgs>();
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: _i9.EventDatePickerPage(
          blocContext: args.blocContext,
          key: args.key,
        ),
        transitionsBuilder: _i35.slideRightTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TicketCheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<TicketCheckoutRouteArgs>();
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: _i10.TicketCheckoutPage(
          event: args.event,
          key: args.key,
        ),
        transitionsBuilder: _i32.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    VipCheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<VipCheckoutRouteArgs>();
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: _i11.VipCheckoutPage(
          ticket: args.ticket,
          key: args.key,
        ),
        transitionsBuilder: _i32.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TicketPaymentConfirmRoute.name: (routeData) {
      final args = routeData.argsAs<TicketPaymentConfirmRouteArgs>();
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: _i12.TicketPaymentConfirmPage(
          ticket: args.ticket,
          key: args.key,
        ),
        transitionsBuilder: _i32.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TicketScanConfirmRoute.name: (routeData) {
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i13.TicketScanConfirmPage(),
        transitionsBuilder: _i32.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnboardingUserDetailsRoute.name: (routeData) {
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i14.OnboardingUserDetailsPage(),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i15.OnboardingPage(),
        transitionsBuilder: _i32.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    InvoiceDataRoute.name: (routeData) {
      final args = routeData.argsAs<InvoiceDataRouteArgs>();
      return _i30.CustomPage<_i36.CustomerData>(
        routeData: routeData,
        child: _i16.InvoiceDataPage(
          customerData: args.customerData,
          key: args.key,
        ),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FailureRoute.name: (routeData) {
      final args = routeData.argsAs<FailureRouteArgs>();
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: _i17.FailurePage(
          retryCallback: args.retryCallback,
          key: args.key,
        ),
        transitionsBuilder: _i32.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UpdateUsernameRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateUsernameRouteArgs>();
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: _i18.UpdateUsernamePage(
          currentUsername: args.currentUsername,
          key: args.key,
        ),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UpdateProfilePictureRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateProfilePictureRouteArgs>();
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: _i19.UpdateProfilePicturePage(
          currentProfilePictureUrl: args.currentProfilePictureUrl,
          username: args.username,
          key: args.key,
        ),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ReviewRoute.name: (routeData) {
      final args = routeData.argsAs<ReviewRouteArgs>();
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: _i20.ReviewPage(
          blocContext: args.blocContext,
          ticket: args.ticket,
          key: args.key,
        ),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AppSettingsRoute.name: (routeData) {
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i21.AppSettingsPage(),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ContactRoute.name: (routeData) {
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i22.ContactPage(),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PaymentMethodRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentMethodRouteArgs>();
      return _i30.CustomPage<_i36.CustomerData>(
        routeData: routeData,
        child: _i23.PaymentMethodPage(
          customerData: args.customerData,
          key: args.key,
        ),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ClubFiltersRoute.name: (routeData) {
      final args = routeData.argsAs<ClubFiltersRouteArgs>();
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: _i24.ClubFiltersPage(
          blocContext: args.blocContext,
          key: args.key,
        ),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventsRoute.name: (routeData) {
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i25.EventsPage(),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ClubsRoute.name: (routeData) {
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i26.ClubsPage(),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TicketsRoute.name: (routeData) {
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i27.TicketsPage(),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FavoritesRoute.name: (routeData) {
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i28.FavoritesPage(),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileRoute.name: (routeData) {
      return _i30.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i29.ProfilePage(),
        transitionsBuilder: _i33.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i30.RouteConfig> get routes => [
        _i30.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i30.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        _i30.RouteConfig(
          WelcomeLoaderRoute.name,
          path: '/welcome-loader-page',
          children: [
            _i30.RouteConfig(
              EventsRoute.name,
              path: 'events-page',
              parent: WelcomeLoaderRoute.name,
            ),
            _i30.RouteConfig(
              ClubsRoute.name,
              path: 'clubs-page',
              parent: WelcomeLoaderRoute.name,
            ),
            _i30.RouteConfig(
              TicketsRoute.name,
              path: 'tickets-page',
              parent: WelcomeLoaderRoute.name,
            ),
            _i30.RouteConfig(
              FavoritesRoute.name,
              path: 'favorites-page',
              parent: WelcomeLoaderRoute.name,
            ),
            _i30.RouteConfig(
              ProfileRoute.name,
              path: 'profile-page',
              parent: WelcomeLoaderRoute.name,
            ),
          ],
        ),
        _i30.RouteConfig(
          NetworkLostRoute.name,
          path: '/network-lost-page',
        ),
        _i30.RouteConfig(
          EventFiltersRoute.name,
          path: '/event-filters-page',
        ),
        _i30.RouteConfig(
          EventDetailsRoute.name,
          path: '/event-details-page',
        ),
        _i30.RouteConfig(
          ClubDetailsRoute.name,
          path: '/club-details-page',
        ),
        _i30.RouteConfig(
          TicketQrRoute.name,
          path: '/ticket-qr-page',
        ),
        _i30.RouteConfig(
          EventDatePickerRoute.name,
          path: '/event-date-picker-page',
        ),
        _i30.RouteConfig(
          TicketCheckoutRoute.name,
          path: '/ticket-checkout-page',
        ),
        _i30.RouteConfig(
          VipCheckoutRoute.name,
          path: '/vip-checkout-page',
        ),
        _i30.RouteConfig(
          TicketPaymentConfirmRoute.name,
          path: '/ticket-payment-confirm-page',
        ),
        _i30.RouteConfig(
          TicketScanConfirmRoute.name,
          path: '/ticket-scan-confirm-page',
        ),
        _i30.RouteConfig(
          OnboardingUserDetailsRoute.name,
          path: '/onboarding-user-details-page',
        ),
        _i30.RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding-page',
        ),
        _i30.RouteConfig(
          InvoiceDataRoute.name,
          path: '/invoice-data-page',
        ),
        _i30.RouteConfig(
          FailureRoute.name,
          path: '/failure-page',
        ),
        _i30.RouteConfig(
          UpdateUsernameRoute.name,
          path: '/update-username-page',
        ),
        _i30.RouteConfig(
          UpdateProfilePictureRoute.name,
          path: '/update-profile-picture-page',
        ),
        _i30.RouteConfig(
          ReviewRoute.name,
          path: '/review-page',
        ),
        _i30.RouteConfig(
          AppSettingsRoute.name,
          path: '/app-settings-page',
        ),
        _i30.RouteConfig(
          ContactRoute.name,
          path: '/contact-page',
        ),
        _i30.RouteConfig(
          PaymentMethodRoute.name,
          path: '/payment-method-page',
        ),
        _i30.RouteConfig(
          ClubFiltersRoute.name,
          path: '/club-filters-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i30.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i30.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.WelcomeLoaderPage]
class WelcomeLoaderRoute extends _i30.PageRouteInfo<void> {
  const WelcomeLoaderRoute({List<_i30.PageRouteInfo>? children})
      : super(
          WelcomeLoaderRoute.name,
          path: '/welcome-loader-page',
          initialChildren: children,
        );

  static const String name = 'WelcomeLoaderRoute';
}

/// generated route for
/// [_i4.NetworkLostPage]
class NetworkLostRoute extends _i30.PageRouteInfo<void> {
  const NetworkLostRoute()
      : super(
          NetworkLostRoute.name,
          path: '/network-lost-page',
        );

  static const String name = 'NetworkLostRoute';
}

/// generated route for
/// [_i5.EventFiltersPage]
class EventFiltersRoute extends _i30.PageRouteInfo<EventFiltersRouteArgs> {
  EventFiltersRoute({
    required _i31.BuildContext blocContext,
    _i31.Key? key,
  }) : super(
          EventFiltersRoute.name,
          path: '/event-filters-page',
          args: EventFiltersRouteArgs(
            blocContext: blocContext,
            key: key,
          ),
        );

  static const String name = 'EventFiltersRoute';
}

class EventFiltersRouteArgs {
  const EventFiltersRouteArgs({
    required this.blocContext,
    this.key,
  });

  final _i31.BuildContext blocContext;

  final _i31.Key? key;

  @override
  String toString() {
    return 'EventFiltersRouteArgs{blocContext: $blocContext, key: $key}';
  }
}

/// generated route for
/// [_i6.EventDetailsPage]
class EventDetailsRoute extends _i30.PageRouteInfo<EventDetailsRouteArgs> {
  EventDetailsRoute({
    String? eventId,
    _i37.Event? event,
    String? heroTag,
    int? ticketPrice,
    _i31.Key? key,
  }) : super(
          EventDetailsRoute.name,
          path: '/event-details-page',
          args: EventDetailsRouteArgs(
            eventId: eventId,
            event: event,
            heroTag: heroTag,
            ticketPrice: ticketPrice,
            key: key,
          ),
        );

  static const String name = 'EventDetailsRoute';
}

class EventDetailsRouteArgs {
  const EventDetailsRouteArgs({
    this.eventId,
    this.event,
    this.heroTag,
    this.ticketPrice,
    this.key,
  });

  final String? eventId;

  final _i37.Event? event;

  final String? heroTag;

  final int? ticketPrice;

  final _i31.Key? key;

  @override
  String toString() {
    return 'EventDetailsRouteArgs{eventId: $eventId, event: $event, heroTag: $heroTag, ticketPrice: $ticketPrice, key: $key}';
  }
}

/// generated route for
/// [_i7.ClubDetailsPage]
class ClubDetailsRoute extends _i30.PageRouteInfo<ClubDetailsRouteArgs> {
  ClubDetailsRoute({
    _i31.Key? key,
    String? clubId,
    _i38.Club? club,
    String? heroTag,
  }) : super(
          ClubDetailsRoute.name,
          path: '/club-details-page',
          args: ClubDetailsRouteArgs(
            key: key,
            clubId: clubId,
            club: club,
            heroTag: heroTag,
          ),
        );

  static const String name = 'ClubDetailsRoute';
}

class ClubDetailsRouteArgs {
  const ClubDetailsRouteArgs({
    this.key,
    this.clubId,
    this.club,
    this.heroTag,
  });

  final _i31.Key? key;

  final String? clubId;

  final _i38.Club? club;

  final String? heroTag;

  @override
  String toString() {
    return 'ClubDetailsRouteArgs{key: $key, clubId: $clubId, club: $club, heroTag: $heroTag}';
  }
}

/// generated route for
/// [_i8.TicketQrPage]
class TicketQrRoute extends _i30.PageRouteInfo<TicketQrRouteArgs> {
  TicketQrRoute({
    required _i39.Ticket ticket,
    _i31.Key? key,
  }) : super(
          TicketQrRoute.name,
          path: '/ticket-qr-page',
          args: TicketQrRouteArgs(
            ticket: ticket,
            key: key,
          ),
        );

  static const String name = 'TicketQrRoute';
}

class TicketQrRouteArgs {
  const TicketQrRouteArgs({
    required this.ticket,
    this.key,
  });

  final _i39.Ticket ticket;

  final _i31.Key? key;

  @override
  String toString() {
    return 'TicketQrRouteArgs{ticket: $ticket, key: $key}';
  }
}

/// generated route for
/// [_i9.EventDatePickerPage]
class EventDatePickerRoute
    extends _i30.PageRouteInfo<EventDatePickerRouteArgs> {
  EventDatePickerRoute({
    required _i31.BuildContext blocContext,
    _i31.Key? key,
  }) : super(
          EventDatePickerRoute.name,
          path: '/event-date-picker-page',
          args: EventDatePickerRouteArgs(
            blocContext: blocContext,
            key: key,
          ),
        );

  static const String name = 'EventDatePickerRoute';
}

class EventDatePickerRouteArgs {
  const EventDatePickerRouteArgs({
    required this.blocContext,
    this.key,
  });

  final _i31.BuildContext blocContext;

  final _i31.Key? key;

  @override
  String toString() {
    return 'EventDatePickerRouteArgs{blocContext: $blocContext, key: $key}';
  }
}

/// generated route for
/// [_i10.TicketCheckoutPage]
class TicketCheckoutRoute extends _i30.PageRouteInfo<TicketCheckoutRouteArgs> {
  TicketCheckoutRoute({
    required _i37.Event event,
    _i31.Key? key,
  }) : super(
          TicketCheckoutRoute.name,
          path: '/ticket-checkout-page',
          args: TicketCheckoutRouteArgs(
            event: event,
            key: key,
          ),
        );

  static const String name = 'TicketCheckoutRoute';
}

class TicketCheckoutRouteArgs {
  const TicketCheckoutRouteArgs({
    required this.event,
    this.key,
  });

  final _i37.Event event;

  final _i31.Key? key;

  @override
  String toString() {
    return 'TicketCheckoutRouteArgs{event: $event, key: $key}';
  }
}

/// generated route for
/// [_i11.VipCheckoutPage]
class VipCheckoutRoute extends _i30.PageRouteInfo<VipCheckoutRouteArgs> {
  VipCheckoutRoute({
    required _i39.Ticket ticket,
    _i31.Key? key,
  }) : super(
          VipCheckoutRoute.name,
          path: '/vip-checkout-page',
          args: VipCheckoutRouteArgs(
            ticket: ticket,
            key: key,
          ),
        );

  static const String name = 'VipCheckoutRoute';
}

class VipCheckoutRouteArgs {
  const VipCheckoutRouteArgs({
    required this.ticket,
    this.key,
  });

  final _i39.Ticket ticket;

  final _i31.Key? key;

  @override
  String toString() {
    return 'VipCheckoutRouteArgs{ticket: $ticket, key: $key}';
  }
}

/// generated route for
/// [_i12.TicketPaymentConfirmPage]
class TicketPaymentConfirmRoute
    extends _i30.PageRouteInfo<TicketPaymentConfirmRouteArgs> {
  TicketPaymentConfirmRoute({
    required _i39.Ticket ticket,
    _i31.Key? key,
  }) : super(
          TicketPaymentConfirmRoute.name,
          path: '/ticket-payment-confirm-page',
          args: TicketPaymentConfirmRouteArgs(
            ticket: ticket,
            key: key,
          ),
        );

  static const String name = 'TicketPaymentConfirmRoute';
}

class TicketPaymentConfirmRouteArgs {
  const TicketPaymentConfirmRouteArgs({
    required this.ticket,
    this.key,
  });

  final _i39.Ticket ticket;

  final _i31.Key? key;

  @override
  String toString() {
    return 'TicketPaymentConfirmRouteArgs{ticket: $ticket, key: $key}';
  }
}

/// generated route for
/// [_i13.TicketScanConfirmPage]
class TicketScanConfirmRoute extends _i30.PageRouteInfo<void> {
  const TicketScanConfirmRoute()
      : super(
          TicketScanConfirmRoute.name,
          path: '/ticket-scan-confirm-page',
        );

  static const String name = 'TicketScanConfirmRoute';
}

/// generated route for
/// [_i14.OnboardingUserDetailsPage]
class OnboardingUserDetailsRoute extends _i30.PageRouteInfo<void> {
  const OnboardingUserDetailsRoute()
      : super(
          OnboardingUserDetailsRoute.name,
          path: '/onboarding-user-details-page',
        );

  static const String name = 'OnboardingUserDetailsRoute';
}

/// generated route for
/// [_i15.OnboardingPage]
class OnboardingRoute extends _i30.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: '/onboarding-page',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i16.InvoiceDataPage]
class InvoiceDataRoute extends _i30.PageRouteInfo<InvoiceDataRouteArgs> {
  InvoiceDataRoute({
    required _i36.CustomerData customerData,
    _i31.Key? key,
  }) : super(
          InvoiceDataRoute.name,
          path: '/invoice-data-page',
          args: InvoiceDataRouteArgs(
            customerData: customerData,
            key: key,
          ),
        );

  static const String name = 'InvoiceDataRoute';
}

class InvoiceDataRouteArgs {
  const InvoiceDataRouteArgs({
    required this.customerData,
    this.key,
  });

  final _i36.CustomerData customerData;

  final _i31.Key? key;

  @override
  String toString() {
    return 'InvoiceDataRouteArgs{customerData: $customerData, key: $key}';
  }
}

/// generated route for
/// [_i17.FailurePage]
class FailureRoute extends _i30.PageRouteInfo<FailureRouteArgs> {
  FailureRoute({
    required Function retryCallback,
    _i31.Key? key,
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

  final _i31.Key? key;

  @override
  String toString() {
    return 'FailureRouteArgs{retryCallback: $retryCallback, key: $key}';
  }
}

/// generated route for
/// [_i18.UpdateUsernamePage]
class UpdateUsernameRoute extends _i30.PageRouteInfo<UpdateUsernameRouteArgs> {
  UpdateUsernameRoute({
    required String currentUsername,
    _i31.Key? key,
  }) : super(
          UpdateUsernameRoute.name,
          path: '/update-username-page',
          args: UpdateUsernameRouteArgs(
            currentUsername: currentUsername,
            key: key,
          ),
        );

  static const String name = 'UpdateUsernameRoute';
}

class UpdateUsernameRouteArgs {
  const UpdateUsernameRouteArgs({
    required this.currentUsername,
    this.key,
  });

  final String currentUsername;

  final _i31.Key? key;

  @override
  String toString() {
    return 'UpdateUsernameRouteArgs{currentUsername: $currentUsername, key: $key}';
  }
}

/// generated route for
/// [_i19.UpdateProfilePicturePage]
class UpdateProfilePictureRoute
    extends _i30.PageRouteInfo<UpdateProfilePictureRouteArgs> {
  UpdateProfilePictureRoute({
    required String currentProfilePictureUrl,
    required String username,
    _i31.Key? key,
  }) : super(
          UpdateProfilePictureRoute.name,
          path: '/update-profile-picture-page',
          args: UpdateProfilePictureRouteArgs(
            currentProfilePictureUrl: currentProfilePictureUrl,
            username: username,
            key: key,
          ),
        );

  static const String name = 'UpdateProfilePictureRoute';
}

class UpdateProfilePictureRouteArgs {
  const UpdateProfilePictureRouteArgs({
    required this.currentProfilePictureUrl,
    required this.username,
    this.key,
  });

  final String currentProfilePictureUrl;

  final String username;

  final _i31.Key? key;

  @override
  String toString() {
    return 'UpdateProfilePictureRouteArgs{currentProfilePictureUrl: $currentProfilePictureUrl, username: $username, key: $key}';
  }
}

/// generated route for
/// [_i20.ReviewPage]
class ReviewRoute extends _i30.PageRouteInfo<ReviewRouteArgs> {
  ReviewRoute({
    required _i31.BuildContext blocContext,
    required _i39.Ticket ticket,
    _i31.Key? key,
  }) : super(
          ReviewRoute.name,
          path: '/review-page',
          args: ReviewRouteArgs(
            blocContext: blocContext,
            ticket: ticket,
            key: key,
          ),
        );

  static const String name = 'ReviewRoute';
}

class ReviewRouteArgs {
  const ReviewRouteArgs({
    required this.blocContext,
    required this.ticket,
    this.key,
  });

  final _i31.BuildContext blocContext;

  final _i39.Ticket ticket;

  final _i31.Key? key;

  @override
  String toString() {
    return 'ReviewRouteArgs{blocContext: $blocContext, ticket: $ticket, key: $key}';
  }
}

/// generated route for
/// [_i21.AppSettingsPage]
class AppSettingsRoute extends _i30.PageRouteInfo<void> {
  const AppSettingsRoute()
      : super(
          AppSettingsRoute.name,
          path: '/app-settings-page',
        );

  static const String name = 'AppSettingsRoute';
}

/// generated route for
/// [_i22.ContactPage]
class ContactRoute extends _i30.PageRouteInfo<void> {
  const ContactRoute()
      : super(
          ContactRoute.name,
          path: '/contact-page',
        );

  static const String name = 'ContactRoute';
}

/// generated route for
/// [_i23.PaymentMethodPage]
class PaymentMethodRoute extends _i30.PageRouteInfo<PaymentMethodRouteArgs> {
  PaymentMethodRoute({
    required _i36.CustomerData customerData,
    _i31.Key? key,
  }) : super(
          PaymentMethodRoute.name,
          path: '/payment-method-page',
          args: PaymentMethodRouteArgs(
            customerData: customerData,
            key: key,
          ),
        );

  static const String name = 'PaymentMethodRoute';
}

class PaymentMethodRouteArgs {
  const PaymentMethodRouteArgs({
    required this.customerData,
    this.key,
  });

  final _i36.CustomerData customerData;

  final _i31.Key? key;

  @override
  String toString() {
    return 'PaymentMethodRouteArgs{customerData: $customerData, key: $key}';
  }
}

/// generated route for
/// [_i24.ClubFiltersPage]
class ClubFiltersRoute extends _i30.PageRouteInfo<ClubFiltersRouteArgs> {
  ClubFiltersRoute({
    required _i31.BuildContext blocContext,
    _i31.Key? key,
  }) : super(
          ClubFiltersRoute.name,
          path: '/club-filters-page',
          args: ClubFiltersRouteArgs(
            blocContext: blocContext,
            key: key,
          ),
        );

  static const String name = 'ClubFiltersRoute';
}

class ClubFiltersRouteArgs {
  const ClubFiltersRouteArgs({
    required this.blocContext,
    this.key,
  });

  final _i31.BuildContext blocContext;

  final _i31.Key? key;

  @override
  String toString() {
    return 'ClubFiltersRouteArgs{blocContext: $blocContext, key: $key}';
  }
}

/// generated route for
/// [_i25.EventsPage]
class EventsRoute extends _i30.PageRouteInfo<void> {
  const EventsRoute()
      : super(
          EventsRoute.name,
          path: 'events-page',
        );

  static const String name = 'EventsRoute';
}

/// generated route for
/// [_i26.ClubsPage]
class ClubsRoute extends _i30.PageRouteInfo<void> {
  const ClubsRoute()
      : super(
          ClubsRoute.name,
          path: 'clubs-page',
        );

  static const String name = 'ClubsRoute';
}

/// generated route for
/// [_i27.TicketsPage]
class TicketsRoute extends _i30.PageRouteInfo<void> {
  const TicketsRoute()
      : super(
          TicketsRoute.name,
          path: 'tickets-page',
        );

  static const String name = 'TicketsRoute';
}

/// generated route for
/// [_i28.FavoritesPage]
class FavoritesRoute extends _i30.PageRouteInfo<void> {
  const FavoritesRoute()
      : super(
          FavoritesRoute.name,
          path: 'favorites-page',
        );

  static const String name = 'FavoritesRoute';
}

/// generated route for
/// [_i29.ProfilePage]
class ProfileRoute extends _i30.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile-page',
        );

  static const String name = 'ProfileRoute';
}

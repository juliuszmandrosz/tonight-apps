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
import 'package:auto_route/auto_route.dart' as _i36;
import 'package:clubs/domain/club/club_entity.dart' as _i43;
import 'package:clubs/infrastructure/filters/filter/city_filter.dart' as _i46;
import 'package:events/events.dart' as _i44;
import 'package:flutter/material.dart' as _i37;
import 'package:payments/domain/domain.dart' as _i41;
import 'package:tickets/tickets.dart' as _i45;

import '../add_wall_photo/add_wall_photo_page.dart' as _i28;
import '../app_settings/app_settings_page.dart' as _i24;
import '../club_city_picker/club_city_picker_page.dart' as _i12;
import '../club_details/club_details_page.dart' as _i8;
import '../contact/contact_page.dart' as _i25;
import '../discover/discover_page.dart' as _i34;
import '../event_chat/event_chat_page.dart' as _i32;
import '../event_city_picker/event_city_picker_page.dart' as _i11;
import '../event_date_picker/event_date_picker_page.dart' as _i10;
import '../event_filters/event_filters_page.dart' as _i5;
import '../event_review/review_page.dart' as _i23;
import '../events_details/event_details_page.dart' as _i6;
import '../failure/failure_page.dart' as _i20;
import '../favorites/favorites_page.dart' as _i31;
import '../invoice_data/invoice_data_page.dart' as _i19;
import '../network_lost/network_lost_page.dart' as _i4;
import '../onboarding/onboarding_page.dart' as _i18;
import '../onboarding/onboarding_user_details_page.dart' as _i17;
import '../payment_method/payment_method_page.dart' as _i26;
import '../profile/profile_page.dart' as _i35;
import '../select_club/select_club_page.dart' as _i29;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../ticket_checkout/ticket_checkout_page.dart' as _i13;
import '../ticket_payment_confirm/ticket_payment_confirm_page.dart' as _i15;
import '../ticket_qr/ticket_qr_page.dart' as _i9;
import '../ticket_scan_confirm/ticket_scan_confirm_page.dart' as _i16;
import '../tickets/tickets_page.dart' as _i30;
import '../tonight/tonight_page.dart' as _i33;
import '../update_profile_picture/update_profile_picture_page.dart' as _i22;
import '../update_username/update_username_page.dart' as _i21;
import '../user_details/user_details_page.dart' as _i7;
import '../vip_checkout/vip_checkout_page.dart' as _i14;
import '../wall_photo_camera_preview/wall_photo_camera_preview_page.dart'
    as _i27;
import '../welcome_loader/welcome_loader_page.dart' as _i3;
import 'page_transitions/fade_in_transition.dart' as _i40;
import 'page_transitions/slide_left_transition.dart' as _i38;
import 'page_transitions/slide_up_transition.dart' as _i42;
import 'page_transitions/zoom_in_transition.dart' as _i39;

class AppRouter extends _i36.RootStackRouter {
  AppRouter([_i37.GlobalKey<_i37.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i36.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.SignInPage(),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WelcomeLoaderRoute.name: (routeData) {
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.WelcomeLoaderPage(),
        transitionsBuilder: _i39.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NetworkLostRoute.name: (routeData) {
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.NetworkLostPage(),
        transitionsBuilder: _i39.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventFiltersRoute.name: (routeData) {
      final args = routeData.argsAs<EventFiltersRouteArgs>();
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i5.EventFiltersPage(
          blocContext: args.blocContext,
          selectedFilters: args.selectedFilters,
          key: args.key,
        ),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<EventDetailsRouteArgs>(
          orElse: () => const EventDetailsRouteArgs());
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i6.EventDetailsPage(
          eventId: args.eventId,
          event: args.event,
          heroTag: args.heroTag,
          ticketPrice: args.ticketPrice,
          key: args.key,
        ),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UserDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<UserDetailsRouteArgs>();
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i7.UserDetailsPage(
          userId: args.userId,
          key: args.key,
        ),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ClubDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ClubDetailsRouteArgs>(
          orElse: () => const ClubDetailsRouteArgs());
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i8.ClubDetailsPage(
          key: args.key,
          clubId: args.clubId,
          club: args.club,
          heroTag: args.heroTag,
        ),
        transitionsBuilder: _i40.fadeInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TicketQrRoute.name: (routeData) {
      final args = routeData.argsAs<TicketQrRouteArgs>();
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i9.TicketQrPage(
          ticket: args.ticket,
          key: args.key,
        ),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventDatePickerRoute.name: (routeData) {
      final args = routeData.argsAs<EventDatePickerRouteArgs>();
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i10.EventDatePickerPage(
          blocContext: args.blocContext,
          selectedDate: args.selectedDate,
          key: args.key,
        ),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventCityPickerRoute.name: (routeData) {
      final args = routeData.argsAs<EventCityPickerRouteArgs>();
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i11.EventCityPickerPage(
          blocContext: args.blocContext,
          selectedCity: args.selectedCity,
          key: args.key,
        ),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ClubCityPickerRoute.name: (routeData) {
      final args = routeData.argsAs<ClubCityPickerRouteArgs>();
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i12.ClubCityPickerPage(
          blocContext: args.blocContext,
          selectedCity: args.selectedCity,
          key: args.key,
        ),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TicketCheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<TicketCheckoutRouteArgs>();
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i13.TicketCheckoutPage(
          event: args.event,
          key: args.key,
        ),
        transitionsBuilder: _i39.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    VipCheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<VipCheckoutRouteArgs>();
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i14.VipCheckoutPage(
          ticket: args.ticket,
          key: args.key,
        ),
        transitionsBuilder: _i39.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TicketPaymentConfirmRoute.name: (routeData) {
      final args = routeData.argsAs<TicketPaymentConfirmRouteArgs>();
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i15.TicketPaymentConfirmPage(
          ticket: args.ticket,
          key: args.key,
        ),
        transitionsBuilder: _i39.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TicketScanConfirmRoute.name: (routeData) {
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i16.TicketScanConfirmPage(),
        transitionsBuilder: _i39.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnboardingUserDetailsRoute.name: (routeData) {
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i17.OnboardingUserDetailsPage(),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i18.OnboardingPage(),
        transitionsBuilder: _i39.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    InvoiceDataRoute.name: (routeData) {
      final args = routeData.argsAs<InvoiceDataRouteArgs>();
      return _i36.CustomPage<_i41.CustomerData>(
        routeData: routeData,
        child: _i19.InvoiceDataPage(
          customerData: args.customerData,
          key: args.key,
        ),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FailureRoute.name: (routeData) {
      final args = routeData.argsAs<FailureRouteArgs>();
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i20.FailurePage(
          retryCallback: args.retryCallback,
          key: args.key,
        ),
        transitionsBuilder: _i39.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UpdateUsernameRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateUsernameRouteArgs>();
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i21.UpdateUsernamePage(
          currentUsername: args.currentUsername,
          key: args.key,
        ),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UpdateProfilePictureRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateProfilePictureRouteArgs>();
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i22.UpdateProfilePicturePage(
          currentProfilePictureUrl: args.currentProfilePictureUrl,
          username: args.username,
          key: args.key,
        ),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ReviewRoute.name: (routeData) {
      final args = routeData.argsAs<ReviewRouteArgs>();
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i23.ReviewPage(
          eventId: args.eventId,
          key: args.key,
        ),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AppSettingsRoute.name: (routeData) {
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i24.AppSettingsPage(),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ContactRoute.name: (routeData) {
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i25.ContactPage(),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PaymentMethodRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentMethodRouteArgs>();
      return _i36.CustomPage<_i41.CustomerData>(
        routeData: routeData,
        child: _i26.PaymentMethodPage(
          customerData: args.customerData,
          key: args.key,
        ),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WallPhotoCameraPreviewRoute.name: (routeData) {
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i27.WallPhotoCameraPreviewPage(),
        transitionsBuilder: _i42.slideUpTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AddWallPhotoRoute.name: (routeData) {
      final args = routeData.argsAs<AddWallPhotoRouteArgs>();
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i28.AddWallPhotoPage(
          photoPath: args.photoPath,
          heroTag: args.heroTag,
          isSelfie: args.isSelfie,
          key: args.key,
        ),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SelectClubRoute.name: (routeData) {
      return _i36.CustomPage<_i43.Club>(
        routeData: routeData,
        child: const _i29.SelectClubPage(),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TicketsRoute.name: (routeData) {
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i30.TicketsPage(),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FavoritesRoute.name: (routeData) {
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i31.FavoritesPage(),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventChatRoute.name: (routeData) {
      final args = routeData.argsAs<EventChatRouteArgs>();
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: _i32.EventChatPage(
          event: args.event,
          key: args.key,
        ),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TonightRoute.name: (routeData) {
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i33.TonightPage(),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DiscoverRoute.name: (routeData) {
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i34.DiscoverPage(),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileRoute.name: (routeData) {
      return _i36.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i35.ProfilePage(),
        transitionsBuilder: _i38.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i36.RouteConfig> get routes => [
        _i36.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i36.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        _i36.RouteConfig(
          WelcomeLoaderRoute.name,
          path: '/welcome-loader-page',
          children: [
            _i36.RouteConfig(
              TonightRoute.name,
              path: 'tonight-page',
              parent: WelcomeLoaderRoute.name,
            ),
            _i36.RouteConfig(
              DiscoverRoute.name,
              path: 'discover-page',
              parent: WelcomeLoaderRoute.name,
            ),
            _i36.RouteConfig(
              ProfileRoute.name,
              path: 'profile-page',
              parent: WelcomeLoaderRoute.name,
            ),
          ],
        ),
        _i36.RouteConfig(
          NetworkLostRoute.name,
          path: '/network-lost-page',
        ),
        _i36.RouteConfig(
          EventFiltersRoute.name,
          path: '/event-filters-page',
        ),
        _i36.RouteConfig(
          EventDetailsRoute.name,
          path: '/event-details-page',
        ),
        _i36.RouteConfig(
          UserDetailsRoute.name,
          path: '/user-details-page',
        ),
        _i36.RouteConfig(
          ClubDetailsRoute.name,
          path: '/club-details-page',
        ),
        _i36.RouteConfig(
          TicketQrRoute.name,
          path: '/ticket-qr-page',
        ),
        _i36.RouteConfig(
          EventDatePickerRoute.name,
          path: '/event-date-picker-page',
        ),
        _i36.RouteConfig(
          EventCityPickerRoute.name,
          path: '/event-city-picker-page',
        ),
        _i36.RouteConfig(
          ClubCityPickerRoute.name,
          path: '/club-city-picker-page',
        ),
        _i36.RouteConfig(
          TicketCheckoutRoute.name,
          path: '/ticket-checkout-page',
        ),
        _i36.RouteConfig(
          VipCheckoutRoute.name,
          path: '/vip-checkout-page',
        ),
        _i36.RouteConfig(
          TicketPaymentConfirmRoute.name,
          path: '/ticket-payment-confirm-page',
        ),
        _i36.RouteConfig(
          TicketScanConfirmRoute.name,
          path: '/ticket-scan-confirm-page',
        ),
        _i36.RouteConfig(
          OnboardingUserDetailsRoute.name,
          path: '/onboarding-user-details-page',
        ),
        _i36.RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding-page',
        ),
        _i36.RouteConfig(
          InvoiceDataRoute.name,
          path: '/invoice-data-page',
        ),
        _i36.RouteConfig(
          FailureRoute.name,
          path: '/failure-page',
        ),
        _i36.RouteConfig(
          UpdateUsernameRoute.name,
          path: '/update-username-page',
        ),
        _i36.RouteConfig(
          UpdateProfilePictureRoute.name,
          path: '/update-profile-picture-page',
        ),
        _i36.RouteConfig(
          ReviewRoute.name,
          path: '/review-page',
        ),
        _i36.RouteConfig(
          AppSettingsRoute.name,
          path: '/app-settings-page',
        ),
        _i36.RouteConfig(
          ContactRoute.name,
          path: '/contact-page',
        ),
        _i36.RouteConfig(
          PaymentMethodRoute.name,
          path: '/payment-method-page',
        ),
        _i36.RouteConfig(
          WallPhotoCameraPreviewRoute.name,
          path: '/wall-photo-camera-preview-page',
        ),
        _i36.RouteConfig(
          AddWallPhotoRoute.name,
          path: '/add-wall-photo-page',
        ),
        _i36.RouteConfig(
          SelectClubRoute.name,
          path: '/select-club-page',
        ),
        _i36.RouteConfig(
          TicketsRoute.name,
          path: '/tickets-page',
        ),
        _i36.RouteConfig(
          FavoritesRoute.name,
          path: '/favorites-page',
        ),
        _i36.RouteConfig(
          EventChatRoute.name,
          path: '/event-chat-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i36.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i36.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.WelcomeLoaderPage]
class WelcomeLoaderRoute extends _i36.PageRouteInfo<void> {
  const WelcomeLoaderRoute({List<_i36.PageRouteInfo>? children})
      : super(
          WelcomeLoaderRoute.name,
          path: '/welcome-loader-page',
          initialChildren: children,
        );

  static const String name = 'WelcomeLoaderRoute';
}

/// generated route for
/// [_i4.NetworkLostPage]
class NetworkLostRoute extends _i36.PageRouteInfo<void> {
  const NetworkLostRoute()
      : super(
          NetworkLostRoute.name,
          path: '/network-lost-page',
        );

  static const String name = 'NetworkLostRoute';
}

/// generated route for
/// [_i5.EventFiltersPage]
class EventFiltersRoute extends _i36.PageRouteInfo<EventFiltersRouteArgs> {
  EventFiltersRoute({
    required _i37.BuildContext blocContext,
    required _i44.EventFilters selectedFilters,
    _i37.Key? key,
  }) : super(
          EventFiltersRoute.name,
          path: '/event-filters-page',
          args: EventFiltersRouteArgs(
            blocContext: blocContext,
            selectedFilters: selectedFilters,
            key: key,
          ),
        );

  static const String name = 'EventFiltersRoute';
}

class EventFiltersRouteArgs {
  const EventFiltersRouteArgs({
    required this.blocContext,
    required this.selectedFilters,
    this.key,
  });

  final _i37.BuildContext blocContext;

  final _i44.EventFilters selectedFilters;

  final _i37.Key? key;

  @override
  String toString() {
    return 'EventFiltersRouteArgs{blocContext: $blocContext, selectedFilters: $selectedFilters, key: $key}';
  }
}

/// generated route for
/// [_i6.EventDetailsPage]
class EventDetailsRoute extends _i36.PageRouteInfo<EventDetailsRouteArgs> {
  EventDetailsRoute({
    String? eventId,
    _i44.Event? event,
    String? heroTag,
    int? ticketPrice,
    _i37.Key? key,
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

  final _i44.Event? event;

  final String? heroTag;

  final int? ticketPrice;

  final _i37.Key? key;

  @override
  String toString() {
    return 'EventDetailsRouteArgs{eventId: $eventId, event: $event, heroTag: $heroTag, ticketPrice: $ticketPrice, key: $key}';
  }
}

/// generated route for
/// [_i7.UserDetailsPage]
class UserDetailsRoute extends _i36.PageRouteInfo<UserDetailsRouteArgs> {
  UserDetailsRoute({
    required String userId,
    _i37.Key? key,
  }) : super(
          UserDetailsRoute.name,
          path: '/user-details-page',
          args: UserDetailsRouteArgs(
            userId: userId,
            key: key,
          ),
        );

  static const String name = 'UserDetailsRoute';
}

class UserDetailsRouteArgs {
  const UserDetailsRouteArgs({
    required this.userId,
    this.key,
  });

  final String userId;

  final _i37.Key? key;

  @override
  String toString() {
    return 'UserDetailsRouteArgs{userId: $userId, key: $key}';
  }
}

/// generated route for
/// [_i8.ClubDetailsPage]
class ClubDetailsRoute extends _i36.PageRouteInfo<ClubDetailsRouteArgs> {
  ClubDetailsRoute({
    _i37.Key? key,
    String? clubId,
    _i43.Club? club,
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

  final _i37.Key? key;

  final String? clubId;

  final _i43.Club? club;

  final String? heroTag;

  @override
  String toString() {
    return 'ClubDetailsRouteArgs{key: $key, clubId: $clubId, club: $club, heroTag: $heroTag}';
  }
}

/// generated route for
/// [_i9.TicketQrPage]
class TicketQrRoute extends _i36.PageRouteInfo<TicketQrRouteArgs> {
  TicketQrRoute({
    required _i45.Ticket ticket,
    _i37.Key? key,
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

  final _i45.Ticket ticket;

  final _i37.Key? key;

  @override
  String toString() {
    return 'TicketQrRouteArgs{ticket: $ticket, key: $key}';
  }
}

/// generated route for
/// [_i10.EventDatePickerPage]
class EventDatePickerRoute
    extends _i36.PageRouteInfo<EventDatePickerRouteArgs> {
  EventDatePickerRoute({
    required _i37.BuildContext blocContext,
    required _i44.DateRangeFilter selectedDate,
    _i37.Key? key,
  }) : super(
          EventDatePickerRoute.name,
          path: '/event-date-picker-page',
          args: EventDatePickerRouteArgs(
            blocContext: blocContext,
            selectedDate: selectedDate,
            key: key,
          ),
        );

  static const String name = 'EventDatePickerRoute';
}

class EventDatePickerRouteArgs {
  const EventDatePickerRouteArgs({
    required this.blocContext,
    required this.selectedDate,
    this.key,
  });

  final _i37.BuildContext blocContext;

  final _i44.DateRangeFilter selectedDate;

  final _i37.Key? key;

  @override
  String toString() {
    return 'EventDatePickerRouteArgs{blocContext: $blocContext, selectedDate: $selectedDate, key: $key}';
  }
}

/// generated route for
/// [_i11.EventCityPickerPage]
class EventCityPickerRoute
    extends _i36.PageRouteInfo<EventCityPickerRouteArgs> {
  EventCityPickerRoute({
    required _i37.BuildContext blocContext,
    required _i44.CityFilter selectedCity,
    _i37.Key? key,
  }) : super(
          EventCityPickerRoute.name,
          path: '/event-city-picker-page',
          args: EventCityPickerRouteArgs(
            blocContext: blocContext,
            selectedCity: selectedCity,
            key: key,
          ),
        );

  static const String name = 'EventCityPickerRoute';
}

class EventCityPickerRouteArgs {
  const EventCityPickerRouteArgs({
    required this.blocContext,
    required this.selectedCity,
    this.key,
  });

  final _i37.BuildContext blocContext;

  final _i44.CityFilter selectedCity;

  final _i37.Key? key;

  @override
  String toString() {
    return 'EventCityPickerRouteArgs{blocContext: $blocContext, selectedCity: $selectedCity, key: $key}';
  }
}

/// generated route for
/// [_i12.ClubCityPickerPage]
class ClubCityPickerRoute extends _i36.PageRouteInfo<ClubCityPickerRouteArgs> {
  ClubCityPickerRoute({
    required _i37.BuildContext blocContext,
    required _i46.CityFilter selectedCity,
    _i37.Key? key,
  }) : super(
          ClubCityPickerRoute.name,
          path: '/club-city-picker-page',
          args: ClubCityPickerRouteArgs(
            blocContext: blocContext,
            selectedCity: selectedCity,
            key: key,
          ),
        );

  static const String name = 'ClubCityPickerRoute';
}

class ClubCityPickerRouteArgs {
  const ClubCityPickerRouteArgs({
    required this.blocContext,
    required this.selectedCity,
    this.key,
  });

  final _i37.BuildContext blocContext;

  final _i46.CityFilter selectedCity;

  final _i37.Key? key;

  @override
  String toString() {
    return 'ClubCityPickerRouteArgs{blocContext: $blocContext, selectedCity: $selectedCity, key: $key}';
  }
}

/// generated route for
/// [_i13.TicketCheckoutPage]
class TicketCheckoutRoute extends _i36.PageRouteInfo<TicketCheckoutRouteArgs> {
  TicketCheckoutRoute({
    required _i44.Event event,
    _i37.Key? key,
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

  final _i44.Event event;

  final _i37.Key? key;

  @override
  String toString() {
    return 'TicketCheckoutRouteArgs{event: $event, key: $key}';
  }
}

/// generated route for
/// [_i14.VipCheckoutPage]
class VipCheckoutRoute extends _i36.PageRouteInfo<VipCheckoutRouteArgs> {
  VipCheckoutRoute({
    required _i45.Ticket ticket,
    _i37.Key? key,
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

  final _i45.Ticket ticket;

  final _i37.Key? key;

  @override
  String toString() {
    return 'VipCheckoutRouteArgs{ticket: $ticket, key: $key}';
  }
}

/// generated route for
/// [_i15.TicketPaymentConfirmPage]
class TicketPaymentConfirmRoute
    extends _i36.PageRouteInfo<TicketPaymentConfirmRouteArgs> {
  TicketPaymentConfirmRoute({
    required _i45.Ticket ticket,
    _i37.Key? key,
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

  final _i45.Ticket ticket;

  final _i37.Key? key;

  @override
  String toString() {
    return 'TicketPaymentConfirmRouteArgs{ticket: $ticket, key: $key}';
  }
}

/// generated route for
/// [_i16.TicketScanConfirmPage]
class TicketScanConfirmRoute extends _i36.PageRouteInfo<void> {
  const TicketScanConfirmRoute()
      : super(
          TicketScanConfirmRoute.name,
          path: '/ticket-scan-confirm-page',
        );

  static const String name = 'TicketScanConfirmRoute';
}

/// generated route for
/// [_i17.OnboardingUserDetailsPage]
class OnboardingUserDetailsRoute extends _i36.PageRouteInfo<void> {
  const OnboardingUserDetailsRoute()
      : super(
          OnboardingUserDetailsRoute.name,
          path: '/onboarding-user-details-page',
        );

  static const String name = 'OnboardingUserDetailsRoute';
}

/// generated route for
/// [_i18.OnboardingPage]
class OnboardingRoute extends _i36.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: '/onboarding-page',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i19.InvoiceDataPage]
class InvoiceDataRoute extends _i36.PageRouteInfo<InvoiceDataRouteArgs> {
  InvoiceDataRoute({
    required _i41.CustomerData customerData,
    _i37.Key? key,
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

  final _i41.CustomerData customerData;

  final _i37.Key? key;

  @override
  String toString() {
    return 'InvoiceDataRouteArgs{customerData: $customerData, key: $key}';
  }
}

/// generated route for
/// [_i20.FailurePage]
class FailureRoute extends _i36.PageRouteInfo<FailureRouteArgs> {
  FailureRoute({
    required Function retryCallback,
    _i37.Key? key,
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

  final _i37.Key? key;

  @override
  String toString() {
    return 'FailureRouteArgs{retryCallback: $retryCallback, key: $key}';
  }
}

/// generated route for
/// [_i21.UpdateUsernamePage]
class UpdateUsernameRoute extends _i36.PageRouteInfo<UpdateUsernameRouteArgs> {
  UpdateUsernameRoute({
    required String currentUsername,
    _i37.Key? key,
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

  final _i37.Key? key;

  @override
  String toString() {
    return 'UpdateUsernameRouteArgs{currentUsername: $currentUsername, key: $key}';
  }
}

/// generated route for
/// [_i22.UpdateProfilePicturePage]
class UpdateProfilePictureRoute
    extends _i36.PageRouteInfo<UpdateProfilePictureRouteArgs> {
  UpdateProfilePictureRoute({
    required String currentProfilePictureUrl,
    required String username,
    _i37.Key? key,
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

  final _i37.Key? key;

  @override
  String toString() {
    return 'UpdateProfilePictureRouteArgs{currentProfilePictureUrl: $currentProfilePictureUrl, username: $username, key: $key}';
  }
}

/// generated route for
/// [_i23.ReviewPage]
class ReviewRoute extends _i36.PageRouteInfo<ReviewRouteArgs> {
  ReviewRoute({
    required String eventId,
    _i37.Key? key,
  }) : super(
          ReviewRoute.name,
          path: '/review-page',
          args: ReviewRouteArgs(
            eventId: eventId,
            key: key,
          ),
        );

  static const String name = 'ReviewRoute';
}

class ReviewRouteArgs {
  const ReviewRouteArgs({
    required this.eventId,
    this.key,
  });

  final String eventId;

  final _i37.Key? key;

  @override
  String toString() {
    return 'ReviewRouteArgs{eventId: $eventId, key: $key}';
  }
}

/// generated route for
/// [_i24.AppSettingsPage]
class AppSettingsRoute extends _i36.PageRouteInfo<void> {
  const AppSettingsRoute()
      : super(
          AppSettingsRoute.name,
          path: '/app-settings-page',
        );

  static const String name = 'AppSettingsRoute';
}

/// generated route for
/// [_i25.ContactPage]
class ContactRoute extends _i36.PageRouteInfo<void> {
  const ContactRoute()
      : super(
          ContactRoute.name,
          path: '/contact-page',
        );

  static const String name = 'ContactRoute';
}

/// generated route for
/// [_i26.PaymentMethodPage]
class PaymentMethodRoute extends _i36.PageRouteInfo<PaymentMethodRouteArgs> {
  PaymentMethodRoute({
    required _i41.CustomerData customerData,
    _i37.Key? key,
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

  final _i41.CustomerData customerData;

  final _i37.Key? key;

  @override
  String toString() {
    return 'PaymentMethodRouteArgs{customerData: $customerData, key: $key}';
  }
}

/// generated route for
/// [_i27.WallPhotoCameraPreviewPage]
class WallPhotoCameraPreviewRoute extends _i36.PageRouteInfo<void> {
  const WallPhotoCameraPreviewRoute()
      : super(
          WallPhotoCameraPreviewRoute.name,
          path: '/wall-photo-camera-preview-page',
        );

  static const String name = 'WallPhotoCameraPreviewRoute';
}

/// generated route for
/// [_i28.AddWallPhotoPage]
class AddWallPhotoRoute extends _i36.PageRouteInfo<AddWallPhotoRouteArgs> {
  AddWallPhotoRoute({
    required String photoPath,
    required String heroTag,
    required bool isSelfie,
    _i37.Key? key,
  }) : super(
          AddWallPhotoRoute.name,
          path: '/add-wall-photo-page',
          args: AddWallPhotoRouteArgs(
            photoPath: photoPath,
            heroTag: heroTag,
            isSelfie: isSelfie,
            key: key,
          ),
        );

  static const String name = 'AddWallPhotoRoute';
}

class AddWallPhotoRouteArgs {
  const AddWallPhotoRouteArgs({
    required this.photoPath,
    required this.heroTag,
    required this.isSelfie,
    this.key,
  });

  final String photoPath;

  final String heroTag;

  final bool isSelfie;

  final _i37.Key? key;

  @override
  String toString() {
    return 'AddWallPhotoRouteArgs{photoPath: $photoPath, heroTag: $heroTag, isSelfie: $isSelfie, key: $key}';
  }
}

/// generated route for
/// [_i29.SelectClubPage]
class SelectClubRoute extends _i36.PageRouteInfo<void> {
  const SelectClubRoute()
      : super(
          SelectClubRoute.name,
          path: '/select-club-page',
        );

  static const String name = 'SelectClubRoute';
}

/// generated route for
/// [_i30.TicketsPage]
class TicketsRoute extends _i36.PageRouteInfo<void> {
  const TicketsRoute()
      : super(
          TicketsRoute.name,
          path: '/tickets-page',
        );

  static const String name = 'TicketsRoute';
}

/// generated route for
/// [_i31.FavoritesPage]
class FavoritesRoute extends _i36.PageRouteInfo<void> {
  const FavoritesRoute()
      : super(
          FavoritesRoute.name,
          path: '/favorites-page',
        );

  static const String name = 'FavoritesRoute';
}

/// generated route for
/// [_i32.EventChatPage]
class EventChatRoute extends _i36.PageRouteInfo<EventChatRouteArgs> {
  EventChatRoute({
    required _i44.Event event,
    _i37.Key? key,
  }) : super(
          EventChatRoute.name,
          path: '/event-chat-page',
          args: EventChatRouteArgs(
            event: event,
            key: key,
          ),
        );

  static const String name = 'EventChatRoute';
}

class EventChatRouteArgs {
  const EventChatRouteArgs({
    required this.event,
    this.key,
  });

  final _i44.Event event;

  final _i37.Key? key;

  @override
  String toString() {
    return 'EventChatRouteArgs{event: $event, key: $key}';
  }
}

/// generated route for
/// [_i33.TonightPage]
class TonightRoute extends _i36.PageRouteInfo<void> {
  const TonightRoute()
      : super(
          TonightRoute.name,
          path: 'tonight-page',
        );

  static const String name = 'TonightRoute';
}

/// generated route for
/// [_i34.DiscoverPage]
class DiscoverRoute extends _i36.PageRouteInfo<void> {
  const DiscoverRoute()
      : super(
          DiscoverRoute.name,
          path: 'discover-page',
        );

  static const String name = 'DiscoverRoute';
}

/// generated route for
/// [_i35.ProfilePage]
class ProfileRoute extends _i36.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile-page',
        );

  static const String name = 'ProfileRoute';
}

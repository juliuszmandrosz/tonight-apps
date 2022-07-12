import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/failure/failure_page.dart';
import 'package:raver/presentation/app_settings/app_settings_page.dart';
import 'package:raver/presentation/club_details/club_details_page.dart';
import 'package:raver/presentation/clubs/clubs_page.dart';
import 'package:raver/presentation/contact/contact_page.dart';
import 'package:raver/presentation/event_date_picker/event_date_picker_page.dart';
import 'package:raver/presentation/event_filters/event_filters_page.dart';
import 'package:raver/presentation/event_review/review_page.dart';
import 'package:raver/presentation/events/events_page.dart';
import 'package:raver/presentation/events_details/event_details_page.dart';
import 'package:raver/presentation/favorites/favorites_page.dart';
import 'package:raver/presentation/invoice_data/invoice_data_page.dart';
import 'package:raver/presentation/network_lost/network_lost_page.dart';
import 'package:raver/presentation/onboarding/onboarding_page.dart';
import 'package:raver/presentation/onboarding/onboarding_username_page.dart';
import 'package:raver/presentation/profile/profile_page.dart';
import 'package:raver/presentation/routes/page_transitions/fade_in_transition.dart';
import 'package:raver/presentation/routes/page_transitions/slide_left_transition.dart';
import 'package:raver/presentation/routes/page_transitions/slide_right_transition.dart';
import 'package:raver/presentation/routes/page_transitions/zoom_in_transition.dart';
import 'package:raver/presentation/sign_in/sign_in_page.dart';
import 'package:raver/presentation/splash/splash_page.dart';
import 'package:raver/presentation/ticket_checkout/ticket_checkout_page.dart';
import 'package:raver/presentation/ticket_payment_confirm/ticket_payment_confirm_page.dart';
import 'package:raver/presentation/ticket_qr/ticket_qr_page.dart';
import 'package:raver/presentation/ticket_scan_confirm/ticket_scan_confirm_page.dart';
import 'package:raver/presentation/tickets/tickets_page.dart';
import 'package:raver/presentation/update_username/update_username_page.dart';
import 'package:raver/presentation/vip_checkout/vip_checkout_page.dart';
import 'package:raver/presentation/welcome_loader/welcome_loader_page.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_payments/domain/domain.dart';
import 'package:raver_tickets/raver_tickets.dart';

part 'app_router.gr.dart';

const animationDuration = 300;

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    CustomRoute(
      page: SignInPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: WelcomeLoaderPage,
      children: [
        CustomRoute(
          page: EventsPage,
          transitionsBuilder: slideLeftTransition,
          durationInMilliseconds: animationDuration,
        ),
        CustomRoute(
          page: ClubsPage,
          transitionsBuilder: slideLeftTransition,
          durationInMilliseconds: animationDuration,
        ),
        CustomRoute(
          page: TicketsPage,
          transitionsBuilder: slideLeftTransition,
          durationInMilliseconds: animationDuration,
        ),
        CustomRoute(
          page: FavoritesPage,
          transitionsBuilder: slideLeftTransition,
          durationInMilliseconds: animationDuration,
        ),
        CustomRoute(
          page: ProfilePage,
          transitionsBuilder: slideLeftTransition,
          durationInMilliseconds: animationDuration,
        ),
      ],
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: NetworkLostPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: EventFiltersPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: EventDetailsPage,
      transitionsBuilder: fadeInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: ClubDetailsPage,
      transitionsBuilder: fadeInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: TicketQrPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: EventDatePickerPage,
      transitionsBuilder: slideRightTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: TicketCheckoutPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: VipCheckoutPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: TicketPaymentConfirmPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: TicketScanConfirmPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: OnboardingUsernamePage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: OnboardingPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute<InvoiceData>(
      page: InvoiceDataPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: FailurePage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: UpdateUsernamePage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: ReviewPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: AppSettingsPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: ContactPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
  ],
)
class AppRouter extends _$AppRouter {}

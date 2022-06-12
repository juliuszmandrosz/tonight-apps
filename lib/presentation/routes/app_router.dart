import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
import 'package:raver/presentation/notifications/notifications_page.dart';
import 'package:raver/presentation/onboarding/onboarding_page.dart';
import 'package:raver/presentation/profile/profile_page.dart';
import 'package:raver/presentation/sign_in/sign_in_page.dart';
import 'package:raver/presentation/splash/splash_page.dart';
import 'package:raver/presentation/ticket_checkout/ticket_checkout_page.dart';
import 'package:raver/presentation/ticket_payment_confirm/ticket_payment_confirm_page.dart';
import 'package:raver/presentation/ticket_qr/ticket_qr_page.dart';
import 'package:raver/presentation/tickets/tickets_page.dart';
import 'package:raver/presentation/update_username/update_username_page.dart';
import 'package:raver/presentation/vip_checkout/vip_checkout_page.dart';
import 'package:raver/presentation/welcome_loader/welcome_loader_page.dart';
import 'package:raver/terms_of_service/terms_of_service_page.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_payments/domain/domain.dart';
import 'package:raver_tickets/raver_tickets.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(
      page: WelcomeLoaderPage,
      children: [
        AutoRoute(page: EventsPage),
        AutoRoute(page: ClubsPage),
        AutoRoute(page: TicketsPage),
        AutoRoute(page: FavoritesPage),
        AutoRoute(page: ProfilePage),
      ],
    ),
    AutoRoute(page: NetworkLostPage),
    AutoRoute(page: EventFiltersPage),
    AutoRoute(page: EventDetailsPage),
    AutoRoute(page: ClubDetailsPage),
    AutoRoute(page: TicketQrPage),
    AutoRoute(page: EventDatePickerPage),
    AutoRoute(page: TicketCheckoutPage),
    AutoRoute(page: VipCheckoutPage),
    AutoRoute(page: TicketPaymentConfirmPage),
    AutoRoute(page: AppSettingsPage),
    AutoRoute(page: UpdateUsernamePage),
    AutoRoute(page: OnboardingPage),
    AutoRoute(page: ReviewPage),
    AutoRoute(page: ContactPage),
    AutoRoute(page: NotificationsPage),
    AutoRoute(page: TermsOfServicePage),
    AutoRoute<InvoiceData>(page: InvoiceDataPage),
  ],
)
class AppRouter extends _$AppRouter {}

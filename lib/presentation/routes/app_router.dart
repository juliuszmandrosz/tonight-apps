import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/presentation/app_settings/app_settings_page.dart';
import 'package:raver/presentation/auth/auth_page.dart';
import 'package:raver/presentation/auth/forgot_password/forgot_password_page.dart';
import 'package:raver/presentation/event_date_picker/event_date_picker_page.dart';
import 'package:raver/presentation/event_filters/event_filters_page.dart';
import 'package:raver/presentation/events/event_details_page.dart';
import 'package:raver/presentation/favorites/favorites_page.dart';
import 'package:raver/presentation/home/clubs_tab/club_page.dart';
import 'package:raver/presentation/home/home_page.dart';
import 'package:raver/presentation/navigator/navigator_page.dart';
import 'package:raver/presentation/network_lost/network_lost_page.dart';
import 'package:raver/presentation/onboarding/onboarding_page.dart';
import 'package:raver/presentation/profile/about_us/about_us_page.dart';
import 'package:raver/presentation/profile/account_settings_page.dart';
import 'package:raver/presentation/profile/change_password/change_password_page.dart';
import 'package:raver/presentation/profile/profile_page.dart';
import 'package:raver/presentation/profile/update_username/update_username_page.dart';
import 'package:raver/presentation/splash/splash_page.dart';
import 'package:raver/presentation/ticket_checkout/ticket_checkout_page.dart';
import 'package:raver/presentation/ticket_payment_confirm/ticket_payment_confirm_page.dart';
import 'package:raver/presentation/ticket_qr/ticket_qr_page.dart';
import 'package:raver/presentation/tickets/ticket_overview_page.dart';
import 'package:raver/presentation/welcome_loader/welcome_loader_page.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_tickets/raver_tickets.dart';

import 'hero_empty_router_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: AuthPage),
    AutoRoute(
      name: "NavigatorRouter",
      page: NavigatorPage,
      children: [
        AutoRoute(
          page: HeroEmptyRouterPage,
          path: 'home',
          name: 'HomeRouter',
          children: [
            AutoRoute(
              path: '',
              page: HomePage,
            ),
          ],
        ),
        AutoRoute(
          page: TicketOverviewPage,
          path: 'tickets',
          name: 'TicketsRouter',
        ),
        AutoRoute(
          page: FavoritesPage,
          path: 'favorites',
          name: 'FavoritesRouter',
        ),
        AutoRoute(
          page: ProfilePage,
          path: 'profile',
          name: 'ProfileRouter',
        ),
      ],
    ),
    AutoRoute(page: WelcomeLoaderPage),
    AutoRoute(page: NetworkLostPage),
    AutoRoute(page: EventFiltersPage),
    AutoRoute(page: EventDetailsPage),
    AutoRoute(page: ClubPage),
    AutoRoute(page: ForgotPasswordPage),
    AutoRoute(page: TicketQrPage),
    AutoRoute(page: EventDatePickerPage),
    AutoRoute(page: TicketCheckoutPage),
    AutoRoute(page: TicketPaymentConfirmPage),
    AutoRoute(page: AppSettingsPage),
    AutoRoute(page: AccountSettingsPage),
    AutoRoute(page: UpdateUsernamePage),
    AutoRoute(page: OnboardingPage),
    AutoRoute(page: ChangePasswordPage),
    AutoRoute(page: AboutUsPage),
  ],
)
class AppRouter extends _$AppRouter {}

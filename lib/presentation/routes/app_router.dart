import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/presentation/add_edit_ticket_pool/add_edit_ticket_pool_page.dart';
import 'package:raver_partners/presentation/add_event/add_event_page.dart';
import 'package:raver_partners/presentation/add_reward/add_reward_page.dart';
import 'package:raver_partners/presentation/auth/auth_page.dart';
import 'package:raver_partners/presentation/contact/contact_page.dart';
import 'package:raver_partners/presentation/event_overview/event_overview_page.dart';
import 'package:raver_partners/presentation/events/events_page.dart';
import 'package:raver_partners/presentation/invite_selector/invite_selector_page.dart';
import 'package:raver_partners/presentation/navigator/navigator_page.dart';
import 'package:raver_partners/presentation/network_lost/network_lost_page.dart';
import 'package:raver_partners/presentation/past_event_details/past_event_details_page.dart';
import 'package:raver_partners/presentation/postpone_event/postpone_event_page.dart';
import 'package:raver_partners/presentation/rewards/rewards_page.dart';
import 'package:raver_partners/presentation/selectors/selectors_page.dart';
import 'package:raver_partners/presentation/settings/settings_page.dart';
import 'package:raver_partners/presentation/splash/splash_page.dart';
import 'package:raver_partners/presentation/terms_of_service/terms_of_service_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: AuthPage),
    AutoRoute(
      page: NavigatorPage,
      children: [
        AutoRoute(page: EventsPage),
        AutoRoute(page: RewardsPage),
        AutoRoute(page: SelectorsPage),
        AutoRoute(page: SettingsPage),
      ],
    ),
    AutoRoute(page: AddEventPage),
    AutoRoute(page: AddRewardPage),
    AutoRoute<TicketPool>(page: AddEditTicketPoolPage),
    AutoRoute(page: EventOverviewPage),
    AutoRoute(page: PastEventDetailsPage),
    AutoRoute(page: PostponeEventPage),
    AutoRoute(page: InviteSelectorPage),
    AutoRoute(page: NetworkLostPage),
    AutoRoute(page: ContactPage),
    AutoRoute(page: TermsOfServicePage),
  ],
)
class AppRouter extends _$AppRouter {}

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/presentation/add_edit_reward/add_edit_reward_page.dart';
import 'package:raver_partners/presentation/add_edit_ticket_pool/add_edit_ticket_pool_page.dart';
import 'package:raver_partners/presentation/add_event/add_event_page.dart';
import 'package:raver_partners/presentation/auth/auth_page.dart';
import 'package:raver_partners/presentation/auth/reset_password/reset_password_page.dart';
import 'package:raver_partners/presentation/dashboard/dashboard_page.dart';
import 'package:raver_partners/presentation/event_overview/event_overview_page.dart';
import 'package:raver_partners/presentation/events/events_page.dart';
import 'package:raver_partners/presentation/navigator/navigator_page.dart';
import 'package:raver_partners/presentation/past_event_details/past_event_details_page.dart';
import 'package:raver_partners/presentation/rewards/rewards_page.dart';
import 'package:raver_partners/presentation/settings/settings_page.dart';
import 'package:raver_partners/presentation/splash/splash_page.dart';
import 'package:raver_rewards/raver_rewards.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: AuthPage),
    AutoRoute(page: ResetPasswordPage),
    AutoRoute(
      page: NavigatorPage,
      children: [
        AutoRoute(page: DashboardPage),
        AutoRoute(page: EventsPage),
        AutoRoute(page: RewardsPage),
        AutoRoute(page: SettingsPage),
      ],
    ),
    AutoRoute(page: AddEventPage),
    AutoRoute(page: AddEditRewardPage),
    AutoRoute<TicketPool>(page: AddEditTicketPoolPage),
    AutoRoute(page: EventOverviewPage),
    AutoRoute(page: PastEventDetailsPage),
  ],
)
class AppRouter extends _$AppRouter {}

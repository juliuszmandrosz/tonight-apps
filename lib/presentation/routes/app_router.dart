import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/presentation/add_edit_ticket_pool/add_edit_ticket_pool_page.dart';
import 'package:raver_partners/presentation/add_event/add_event_page.dart';
import 'package:raver_partners/presentation/add_reward/add_reward_page.dart';
import 'package:raver_partners/presentation/auth/auth_page.dart';
import 'package:raver_partners/presentation/contact/contact_page.dart';
import 'package:raver_partners/presentation/discounts/discounts_page.dart';
import 'package:raver_partners/presentation/event_overview/event_overview_page.dart';
import 'package:raver_partners/presentation/events/events_page.dart';
import 'package:raver_partners/presentation/invite_selector/invite_selector_page.dart';
import 'package:raver_partners/presentation/navigator/navigator_page.dart';
import 'package:raver_partners/presentation/network_lost/network_lost_page.dart';
import 'package:raver_partners/presentation/overview/overview_page.dart';
import 'package:raver_partners/presentation/past_event_details/past_event_details_page.dart';
import 'package:raver_partners/presentation/postpone_event/postpone_event_page.dart';
import 'package:raver_partners/presentation/rewards/rewards_page.dart';
import 'package:raver_partners/presentation/selectors/selectors_page.dart';
import 'package:raver_partners/presentation/splash/splash_page.dart';
import 'package:raver_partners/presentation/terms_of_service/terms_of_service_page.dart';

part 'app_router.gr.dart';

const animationDuration = 300;

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    CustomRoute(
      page: AuthPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: NavigatorPage,
      children: [
        CustomRoute(
          page: OverviewPage,
          transitionsBuilder: slideLeftTransition,
          durationInMilliseconds: animationDuration,
        ),
        CustomRoute(
          page: EventsPage,
          transitionsBuilder: slideLeftTransition,
          durationInMilliseconds: animationDuration,
        ),
        CustomRoute(
          page: RewardsPage,
          transitionsBuilder: slideLeftTransition,
          durationInMilliseconds: animationDuration,
        ),
        CustomRoute(
          page: SelectorsPage,
          transitionsBuilder: slideLeftTransition,
          durationInMilliseconds: animationDuration,
        ),
      ],
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: AddEventPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: AddRewardPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute<TicketPool>(
      page: AddEditTicketPoolPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: EventOverviewPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: PastEventDetailsPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: PostponeEventPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: InviteSelectorPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: NetworkLostPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: ContactPage,
      transitionsBuilder: slideRightTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: TermsOfServicePage,
      transitionsBuilder: slideRightTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: DiscountsPage,
      transitionsBuilder: slideRightTransition,
      durationInMilliseconds: animationDuration,
    ),
  ],
)
class AppRouter extends _$AppRouter {}

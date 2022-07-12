import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/network_lost/network_lost_page.dart';
import 'package:raver_scanner/presentation/contact/contact_page.dart';
import 'package:raver_scanner/presentation/event/event_page.dart';
import 'package:raver_scanner/presentation/navigator/navigator_page.dart';
import 'package:raver_scanner/presentation/scanner/scanner_page.dart';
import 'package:raver_scanner/presentation/settings/settings_page.dart';
import 'package:raver_scanner/presentation/sign_in/sign_in_page.dart';
import 'package:raver_scanner/presentation/splash/splash_page.dart';

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
      page: NavigatorPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
      children: [
        AutoRoute(page: EventPage),
        AutoRoute(page: SettingsPage),
      ],
    ),
    CustomRoute(
      page: ScannerPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: NetworkLostPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: FailurePage,
      transitionsBuilder: zoomInTransition,
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

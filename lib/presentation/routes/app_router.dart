import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver_scanner/network_lost/network_lost_page.dart';
import 'package:raver_scanner/presentation/event/event_page.dart';
import 'package:raver_scanner/presentation/auth/auth_page.dart';
import 'package:raver_scanner/presentation/navigator/navigator_page.dart';
import 'package:raver_scanner/presentation/scanner/scanner_page.dart';
import 'package:raver_scanner/presentation/splash/splash_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: AuthPage),
    AutoRoute(
      page: NavigatorPage,
      children: [
        AutoRoute(page: EventPage),
      ],
    ),
    AutoRoute(page: ScannerPage),
    AutoRoute(page: NetworkLostPage),
  ],
)
class AppRouter extends _$AppRouter {}

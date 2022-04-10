import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver_scanner/presentation/sign_in/reset_password/reset_password_page.dart';
import 'package:raver_scanner/presentation/sign_in/sign_in_page.dart';
import 'package:raver_scanner/presentation/splash/splash_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: ResetPasswordPage),
  ],
)
class AppRouter extends _$AppRouter {}

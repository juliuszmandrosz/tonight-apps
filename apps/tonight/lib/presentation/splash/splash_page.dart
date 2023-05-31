import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/sign_in/widgets/tonight_logo.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (ctx, state) {
        state.map(
          initial: (_) {},
          authenticated: (state) => context.replaceRoute(
            _getAuthenticatedRoute(state.user),
          ),
          unauthenticated: (_) => context.replaceRoute(const OnboardingRoute()),
          deleteAccountSuccess: (_) => {},
          deleteAccountFailure: (_) => {},
          deleteAccountInProgress: (_) => {},
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: TonightLogo(height: context.height),
        ),
      ),
    );
  }

  PageRouteInfo _getAuthenticatedRoute(AppUser user) {
    if (!user.isOnboardingCompleted) return const OnboardingUserDetailsRoute();
    if (user.lastDailySpinAt == null ||
        user.lastDailySpinAt!.isBefore(DateTime.now().startOfDay)) {
      return const DailySpinRoute();
    }
    return const WelcomeLoaderRoute();
  }
}

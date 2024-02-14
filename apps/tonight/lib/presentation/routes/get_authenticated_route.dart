import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

PageRouteInfo getAuthenticatedRoute(AppUser user) {
  if (user.isAnonymous) return const WelcomeLoaderRoute();
  if (!user.isOnboardingCompleted) {
    return OnboardingUserDetailsRoute(user: user);
  }
  // if (user.lastDailySpinAt == null ||
  //     user.lastDailySpinAt!.isBefore(DateTime
  //         .now()
  //         .startOfDay)) {
  //   return const DailySpinRoute();
  // }
  return const WelcomeLoaderRoute();
}

import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/auth/sign_in/sign_in_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/sign_in/widgets/sign_in_buttons.dart';
import 'package:tonight/presentation/sign_in/widgets/sign_in_email_input.dart';
import 'package:tonight/presentation/sign_in/widgets/terms_of_service_info.dart';
import 'package:tonight/presentation/sign_in/widgets/tonight_logo.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.unfocus,
      child: TonightOverlay(
        child: SafeArea(
          child: Scaffold(
            body: BlocProvider(
              create: (context) => getIt<SignInCubit>(),
              child: BlocListener<SignInCubit, SignInState>(
                listener: (context, state) {
                  state.errorMessage.fold(
                    () {},
                    (error) => context.showSnackbarMessage(error),
                  );

                  state.linkSentMessage.fold(
                    () {},
                    (message) => context.showSnackbarMessage(message),
                  );

                  state.signInStatus.isSubmissionInProgress
                      ? context.loaderOverlay.show()
                      : context.loaderOverlay.hide();

                  if (state.signInStatus.isSubmissionSuccess &&
                      state.user.isSome()) {
                    final user = state.user.getOrCrash();
                    final route = _getAuthenticatedRoute(user);
                    context.router.replaceAll([route]);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            const SizedBox(height: 30),
                            TonightLogo(height: context.height * 0.2),
                            SizedBox(height: context.height * 0.15),
                            const SignInEmailInput(),
                            const SizedBox(height: 30),
                            const TermsOfServiceInfo(),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                      const SliverFillRemaining(
                        hasScrollBody: false,
                        child: SignInButtons(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
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

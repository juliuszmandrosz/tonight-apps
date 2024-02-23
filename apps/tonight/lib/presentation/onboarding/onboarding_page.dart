import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/onboarding/onboarding_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/onboarding/widgets/onboarding_page_view.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TonightOverlay(
      child: BlocProvider(
        create: (context) => getIt<OnboardingCubit>(),
        child: Builder(
          builder: (context) {
            return BlocListener<OnboardingCubit, OnboardingState>(
              listener: (context, state) {
                state.errorMessage.fold(
                  () {},
                  (message) => context.showSnackbarMessage(message),
                );

                state.signInStatus.isLoading()
                    ? context.loaderOverlay.show()
                    : context.loaderOverlay.hide();

                if (state.signInStatus.isSuccess()) {
                  context.replaceRoute(const WelcomeLoaderRoute());
                }
              },
              child: SafeArea(
                child: IntroductionScreen(
                  next: const FaIcon(FontAwesomeIcons.arrowRight),
                  done: FloatingActionButton.extended(
                    onPressed:
                        context.read<OnboardingCubit>().signInAnonymously,
                    icon: const FaIcon(FontAwesomeIcons.check),
                    label: Text(S().start),
                  ),
                  onDone: context.read<OnboardingCubit>().signInAnonymously,
                  showSkipButton: true,
                  skip: TextButton(
                    onPressed:
                        context.read<OnboardingCubit>().signInAnonymously,
                    child: Text(S().skip),
                  ),
                  pages: [
                    // TODO - add translations, change onboarding
                    onboardingPageView(
                      context: context,
                      icon: FontAwesomeIcons.peopleArrows,
                      title: 'Events for everyone',
                      body: 'Join the best events in '
                          'your city and meet new people.',
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ); //Material App
  }
}

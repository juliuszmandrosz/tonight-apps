import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tonight/presentation/onboarding/widgets/onboarding_page_view.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      next: const FaIcon(FontAwesomeIcons.arrowRight),
      done: Text(S().start),
      onDone: () => context.pushRoute(const SignInRoute()),
      showSkipButton: true,
      skip: TextButton(
        onPressed: () => context.pushRoute(const SignInRoute()),
        child: Text(S().skip),
      ),
      pages: [
        onboardingPageView(
          context: context,
          icon: FontAwesomeIcons.fire,
          title: S().welcomeToTonight,
          body: S().findBestParties,
        ),
        onboardingPageView(
          context: context,
          icon: FontAwesomeIcons.trophy,
          title: S().receiveRewards,
          body: S().collectBenefits,
        ),
        onboardingPageView(
          context: context,
          icon: FontAwesomeIcons.camera,
          title: S().temporaryPhotos,
          body: S().temporaryPhotosInfo,
        ),
        onboardingPageView(
          context: context,
          icon: FontAwesomeIcons.peopleArrows,
          title: S().meetNewPeople,
          body: S().joinCommunity,
        ),
        onboardingPageView(
          context: context,
          icon: FontAwesomeIcons.solidBell,
          title: S().stayUpdated,
          body: S().addClubToFavoritesAndReceiveNotifications,
        ),
      ],
    ); //Material App
  }
}

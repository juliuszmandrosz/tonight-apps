import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:raver/presentation/onboarding/widgets/onboarding_page_view.dart';
import 'package:raver/presentation/routes/app_router.gr.dart';
import 'package:raver_translations/raver_translations.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: IntroductionScreen(
        next: const FaIcon(FontAwesomeIcons.arrowRight),
        done: Text(S().start),
        onDone: () => context.pushRoute(const OnboardingUsernameRoute()),
        pages: [
          onboardingPageView(
            context: context,
            icon: FontAwesomeIcons.fire,
            title: S().welcomeToTonight,
            body: S().discoverClubs,
          ),
          onboardingPageView(
            context: context,
            icon: FontAwesomeIcons.ticket,
            title: S().buyTicket,
            body: S().payConveniently,
          ),
          onboardingPageView(
            context: context,
            icon: FontAwesomeIcons.trophy,
            title: S().receiveRewards,
            body: S().collectBenefitsInClubs,
          ),
          onboardingPageView(
            context: context,
            icon: FontAwesomeIcons.building,
            title: S().stayUpdated,
            body: S().addClubToFavoritesAndReceiveNotifications,
          ),
          onboardingPageView(
            context: context,
            icon: FontAwesomeIcons.crown,
            title: S().skipTheLine,
            body: S().upgradeTicketToVipAndEnterClub,
          ),
        ],
      ),
    ); //Material App
  }
}

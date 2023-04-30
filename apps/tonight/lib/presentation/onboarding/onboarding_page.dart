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
        // TODO - add translation
        child: Text('Pomiń'),
      ),
      pages: [
        onboardingPageView(
          context: context,
          icon: FontAwesomeIcons.fire,
          title: S().welcomeToTonight,
          // TODO - add translation
          body: 'Znajdź najlepsze imprezy w swoim mieście',
        ),
        onboardingPageView(
          context: context,
          icon: FontAwesomeIcons.trophy,
          title: S().receiveRewards,
          // TODO - add translation
          body:
              'Kolekcjonuj benefity w klubach za dzieleniem się zdjęciami z imprez',
        ),
        onboardingPageView(
          context: context,
          icon: FontAwesomeIcons.peopleArrows,
          // TODO - add translations
          title: 'Poznawaj nowe osoby',
          body: 'Dołącz do społeczności i umawiaj się na imprezy',
        ),
        onboardingPageView(
          context: context,
          icon: FontAwesomeIcons.building,
          title: S().stayUpdated,
          body: S().addClubToFavoritesAndReceiveNotifications,
        ),
      ],
    ); //Material App
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:raver/presentation/onboarding/widgets/onboarding_page_view.dart';
import 'package:raver/presentation/routes/app_router.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // TODO - add translations
      onWillPop: () async => false,
      child: IntroductionScreen(
        next: const FaIcon(FontAwesomeIcons.arrowRight),
        done: const Text('Rozpocznij!'),
        onDone: () => context.pushRoute(const OnboardingUsernameRoute()),
        pages: [
          onboardingPageView(
            context: context,
            icon: FontAwesomeIcons.fire,
            title: 'Witamy w Tonight!',
            body: 'Odkrywaj pobliskie kluby i znajdź imprezę dla siebie',
          ),
          onboardingPageView(
            context: context,
            icon: FontAwesomeIcons.ticket,
            title: 'Kup wejściówkę',
            body:
                'Zapłać w wygodny sposób, korzystając z karty, Google Pay, Apple Pay, BLIK-a lub innej metody dostępnej w Przelewy24',
          ),
          onboardingPageView(
            context: context,
            icon: FontAwesomeIcons.trophy,
            title: 'Otrzymuj nagrody',
            body:
                'Kolekcjonuj benefity w klubach, nabijając frekwencję po zeskanowaniu biletu',
          ),
          onboardingPageView(
            context: context,
            icon: FontAwesomeIcons.building,
            title: 'Bądź na bieżąco',
            body:
                'Dodaj klub do ulubionych i otrzymuj powiadomienia jak tylko doda nowe wydarzenie lub nagrodę',
          ),
          onboardingPageView(
            context: context,
            icon: FontAwesomeIcons.crown,
            title: 'Omiń kolejkę',
            body: 'Ulepsz swój bilet do VIP-a i wejdź do klubu bez kolejki',
          ),
        ],
      ),
    ); //Material App
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/sign_in/widgets/auth_provider_button.dart';

class PhoneSignInButton extends StatelessWidget {
  const PhoneSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthProviderButton(
      icon: FontAwesomeIcons.phone,
      onPressed: () => context.pushRoute(const SignInWithPhoneNumberRoute()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tonight/presentation/sign_in/widgets/auth_providers.dart';
import 'package:tonight/presentation/sign_in/widgets/or_continue_with.dart';
import 'package:tonight/presentation/sign_in/widgets/sign_in_button.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SignInButton(),
        SizedBox(height: 30),
        OrSignInWith(),
        SizedBox(height: 30),
        AuthProviders(),
      ],
    );
  }
}

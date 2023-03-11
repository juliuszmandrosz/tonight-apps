import 'package:flutter/material.dart';
import 'package:raver/presentation/sign_in/widgets/auth_providers.dart';
import 'package:raver/presentation/sign_in/widgets/or_continue_with.dart';
import 'package:raver/presentation/sign_in/widgets/sign_in_button.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        SignInButton(),
        SizedBox(height: 30),
        OrContinueWith(),
        SizedBox(height: 30),
        AuthProviders(),
      ],
    );
  }
}

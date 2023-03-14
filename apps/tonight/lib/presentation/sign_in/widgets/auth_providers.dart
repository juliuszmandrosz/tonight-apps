import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tonight/presentation/sign_in/widgets/apple_sign_in_button.dart';
import 'package:tonight/presentation/sign_in/widgets/google_sign_in_button.dart';

class AuthProviders extends StatelessWidget {
  const AuthProviders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: Platform.isIOS
          ? MainAxisAlignment.spaceEvenly
          : MainAxisAlignment.center,
      children: const [
        GoogleSignInButton(),
        AppleSignInButton(),
      ],
    );
  }
}

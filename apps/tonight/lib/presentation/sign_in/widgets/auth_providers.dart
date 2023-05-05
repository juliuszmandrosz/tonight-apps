import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tonight/presentation/sign_in/widgets/apple_sign_in_button.dart';
import 'package:tonight/presentation/sign_in/widgets/google_sign_in_button.dart';
import 'package:tonight/presentation/sign_in/widgets/phone_sign_in_button.dart';

class AuthProviders extends StatelessWidget {
  const AuthProviders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const PhoneSignInButton(),
        const GoogleSignInButton(),
        if (Platform.isIOS) const AppleSignInButton(),
      ],
    );
  }
}

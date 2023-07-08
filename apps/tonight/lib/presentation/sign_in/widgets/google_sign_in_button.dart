import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/auth/sign_in/cubit/sign_in_cubit.dart';
import 'package:tonight/presentation/sign_in/widgets/auth_provider_button.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthProviderButton(
      icon: FontAwesomeIcons.google,
      onPressed: context.read<SignInCubit>().signInWithGoogle,
    );
  }
}

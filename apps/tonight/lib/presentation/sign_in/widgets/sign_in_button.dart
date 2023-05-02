import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/auth/sign_in/sign_in_cubit.dart';
import 'package:translations/raver_translations.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      buildWhen: (previous, current) =>
          previous.signInStatus != current.signInStatus,
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => context.read<SignInCubit>().sendSignInEmailLink(),
            child: Text(S().signIn),
          ),
        );
      },
    );
  }
}

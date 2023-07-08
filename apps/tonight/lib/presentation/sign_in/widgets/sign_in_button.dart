import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/auth/sign_in/cubit/sign_in_cubit.dart';

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
          height: kButtonHeight,
          child: ElevatedButton(
            onPressed: () => context.read<SignInCubit>().sendSignInEmailLink(),
            // TODO - add translation
            child: Text('Wyślij link logowania'),
          ),
        );
      },
    );
  }
}

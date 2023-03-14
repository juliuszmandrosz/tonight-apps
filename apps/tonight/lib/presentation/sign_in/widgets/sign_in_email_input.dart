import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/auth/sign_in/sign_in_cubit.dart';
import 'package:translations/translations.dart';

class SignInEmailInput extends StatelessWidget {
  const SignInEmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      buildWhen: (previous, current) =>
          previous.email != current.email ||
          previous.signInStatus != current.signInStatus,
      builder: (context, state) {
        return TextField(
          onChanged: (email) => context.read<SignInCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: S().email,
            errorText: _getEmailInputErrorMessage(state),
            errorMaxLines: 2,
          ),
        );
      },
    );
  }

  String? _getEmailInputErrorMessage(SignInState state) {
    if (state.email.valid || state.signInStatus != FormzStatus.invalid) {
      return null;
    }

    return emailInputErrorMessages[state.email.error];
  }
}

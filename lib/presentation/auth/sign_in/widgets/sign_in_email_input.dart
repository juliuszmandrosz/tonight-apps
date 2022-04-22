import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/auth/sign_in/sign_in_cubit.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_translations/raver_translations.dart';

class SignInEmailInput extends StatelessWidget {
  const SignInEmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      buildWhen: (previous, current) =>
          previous.email != current.email || previous.status != current.status,
      builder: (context, state) {
        return TextField(
          onChanged: (email) => context.read<SignInCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: S().email,
            errorText: _getEmailInputErrorMessage(state),
          ),
        );
      },
    );
  }

  String? _getEmailInputErrorMessage(SignInState state) {
    if (state.email.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return emailInputErrorMessages[state.email.error];
  }
}

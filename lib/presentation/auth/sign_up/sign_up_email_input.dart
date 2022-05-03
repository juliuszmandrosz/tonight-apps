import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_scanner/application/sign_up/sign_up_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class SignUpEmailInput extends StatelessWidget {
  const SignUpEmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) =>
          previous.email != current.email ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          onChanged: (email) => context.read<SignUpCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: S().email,
            errorText: _getEmailInputErrorMessage(state),
          ),
        );
      },
    );
  }

  String? _getEmailInputErrorMessage(SignUpState state) {
    if (state.email.valid ||
        state.status != FormzStatus.invalid) {
      return null;
    }

    return emailInputErrorMessages[state.email.error];
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_translations/raver_translations.dart';

class ResetPasswordEmailInput extends StatelessWidget {
  const ResetPasswordEmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          onChanged: (email) =>
              context.read<ResetPasswordCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: S().email,
            errorText: _getEmailInputErrorMessage(state),
          ),
        );
      },
    );
  }

  String? _getEmailInputErrorMessage(ResetPasswordState state) {
    if (state.email.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return emailInputErrorMessages[state.email.error];
  }
}

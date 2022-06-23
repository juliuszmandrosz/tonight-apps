import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_scanner/application/sign_up/sign_up_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class SignUpAccessCodeInput extends StatelessWidget {
  const SignUpAccessCodeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) =>
          previous.accessCode != current.accessCode ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          onChanged: (email) =>
              context.read<SignUpCubit>().accessCodeChanged(email),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: S().accessCode,
            errorText: _getAccessCodeInputErrorMessage(state),
            errorMaxLines: 2,
          ),
        );
      },
    );
  }

  String? _getAccessCodeInputErrorMessage(SignUpState state) {
    if (state.accessCode.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return accessCodeInputErrorMessages[state.accessCode.error];
  }
}

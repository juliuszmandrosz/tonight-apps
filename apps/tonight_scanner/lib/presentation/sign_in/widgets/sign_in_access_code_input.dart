import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_scanner/application/sign_in/sign_in_cubit.dart';
import 'package:translations/raver_translations.dart';

class SignInAccessCodeInput extends StatelessWidget {
  const SignInAccessCodeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      buildWhen: (previous, current) =>
          previous.accessCode != current.accessCode ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          onChanged: (email) =>
              context.read<SignInCubit>().accessCodeChanged(email),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: S().accessCode,
          ),
        );
      },
    );
  }
}

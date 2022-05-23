import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/auth/sign_up/sign_up_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return SizedBox(
          width: 300,
          child: ElevatedButton(
            onPressed: () =>
                context.read<SignUpCubit>().sendSignUpWithEmailLink(),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 30,
              ),
              child: Text(S().register),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/auth/reset_password/reset_password_cubit.dart';
import 'package:raver/generated/l10n.dart';

class ResetPasswordButton extends StatelessWidget {
  const ResetPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () =>
                    context.read<ResetPasswordCubit>().resetPassword(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(S().sendPasswordResetLink),
                ),
              );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver_account_settings/raver_account_settings.dart';
import 'package:raver_translations/generated/l10n.dart';

class SubmitPasswordButton extends StatelessWidget {
  const SubmitPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    child: Text(S().submit),
                    onPressed: () =>
                        context.read<ChangePasswordCubit>().changePassword(),
                  ),
                ],
              );
      },
    );
  }
}

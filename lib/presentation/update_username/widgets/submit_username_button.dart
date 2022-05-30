import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/auth/username/username_cubit.dart';
import 'package:raver_translations/generated/l10n.dart';

class SubmitUsernameButton extends StatelessWidget {
  const SubmitUsernameButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsernameCubit, UsernameState>(
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : SizedBox(
                width: 300,
                child: ElevatedButton(
                  child: Text(S().submit),
                  onPressed: () =>
                      context.read<UsernameCubit>().setUsernameForUser(),
                ),
              );
      },
    );
  }
}

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/auth/username/username_cubit.dart';
import 'package:translations/generated/l10n.dart';

class SubmitUsernameButton extends StatelessWidget {
  const SubmitUsernameButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsernameCubit, UsernameState>(
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircleLoadingIndicator()
            : SizedBox(
                width: double.infinity,
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

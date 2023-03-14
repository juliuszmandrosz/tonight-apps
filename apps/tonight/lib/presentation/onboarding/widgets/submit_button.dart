import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/auth/username/username_cubit.dart';
import 'package:translations/generated/l10n.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsernameCubit, UsernameState>(
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    child: Text(S().submit),
                    onPressed: () =>
                        context.read<UsernameCubit>().setUsernameForUser(),
                  ),
                ],
              );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/auth/form_inputs/username_input.dart';
import 'package:raver/application/auth/username/username_cubit.dart';
import 'package:raver_translations/generated/l10n.dart';

class UserNameInput extends StatefulWidget {
  const UserNameInput({Key? key}) : super(key: key);

  @override
  _UserNameInputState createState() => _UserNameInputState();
}

class _UserNameInputState extends State<UserNameInput> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsernameCubit, UsernameState>(
      buildWhen: (previous, current) =>
          previous.username != current.username ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          onChanged: (username) =>
              context.read<UsernameCubit>().usernameChanged(username),
          decoration: InputDecoration(
            labelText: S().username,
            errorText: _getUsernameInputErrorMessage(state),
          ),
        );
      },
    );
  }

  String? _getUsernameInputErrorMessage(UsernameState state) {
    if (state.username.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return usernameInputErrorMessages[state.username.error];
  }
}

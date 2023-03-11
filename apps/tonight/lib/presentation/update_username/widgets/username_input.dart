import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/auth/form_inputs/username.dart';
import 'package:raver/application/auth/username/username_cubit.dart';
import 'package:raver_translations/generated/l10n.dart';

class UsernameInput extends HookWidget {
  final String currentUsername;

  const UsernameInput({
    this.currentUsername = '',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController(text: currentUsername);

    return BlocBuilder<UsernameCubit, UsernameState>(
      buildWhen: (previous, current) =>
          previous.username != current.username ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          controller: textController,
          onChanged: (username) =>
              context.read<UsernameCubit>().usernameChanged(username),
          decoration: InputDecoration(
            labelText: S().username,
            errorText: _getUsernameInputErrorMessage(state),
            errorMaxLines: 2,
          ),
        );
      },
    );
  }

  String? _getUsernameInputErrorMessage(UsernameState state) {
    if (state.username.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return usernameErrorMessages[state.username.error];
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/auth/form_inputs/username.dart';
import 'package:tonight/application/onboarding/onboarding_cubit.dart';
import 'package:translations/generated/l10n.dart';

class OnboardingUsernameInput extends HookWidget {
  final String currentUsername;

  const OnboardingUsernameInput({
    this.currentUsername = '',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController(text: currentUsername);

    return BlocBuilder<OnboardingCubit, OnboardingState>(
      buildWhen: (previous, current) =>
          previous.username != current.username ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          controller: textController,
          onChanged: (username) =>
              context.read<OnboardingCubit>().usernameChanged(username),
          decoration: InputDecoration(
            labelText: S().username,
            errorText: _getUsernameInputErrorMessage(state),
            errorMaxLines: 2,
          ),
        );
      },
    );
  }

  String? _getUsernameInputErrorMessage(OnboardingState state) {
    if (state.username.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return usernameErrorMessages[state.username.error];
  }
}

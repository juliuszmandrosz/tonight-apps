import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/auth/form_inputs/password_input.dart';
import 'package:raver/application/auth/sign_up/sign_up_cubit.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';

class SignUpPasswordInput extends StatefulWidget {
  const SignUpPasswordInput({Key? key}) : super(key: key);

  @override
  State<SignUpPasswordInput> createState() => _SignUpPasswordInputState();
}

class _SignUpPasswordInputState extends State<SignUpPasswordInput> {
  var _isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          onChanged: (password) =>
              context.read<SignUpCubit>().passwordChanged(password),
          obscureText: _isPasswordHidden,
          decoration: InputDecoration(
            labelText: S().password,
            errorText: _getPasswordInputErrorMessage(state),
            suffixIcon: Padding(
              padding: const EdgeInsetsDirectional.only(end: 5),
              child: RaverIconButton(
                onPressed: () => setState(() {
                  _isPasswordHidden = !_isPasswordHidden;
                }),
                icon: _isPasswordHidden
                    ? const FaIcon(FontAwesomeIcons.eye)
                    : const FaIcon(FontAwesomeIcons.eyeSlash),
              ),
            ),
          ),
        );
      },
    );
  }

  String? _getPasswordInputErrorMessage(SignUpState state) {
    if (state.password.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return passwordInputErrorMessages[state.password.error];
  }
}

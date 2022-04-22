import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/auth/form_inputs/password_input.dart';
import 'package:raver/application/auth/sign_in/sign_in_cubit.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver_translations/raver_translations.dart';

class SignInPasswordInput extends StatefulWidget {
  const SignInPasswordInput({Key? key}) : super(key: key);

  @override
  State<SignInPasswordInput> createState() => _SignInPasswordInputState();
}

class _SignInPasswordInputState extends State<SignInPasswordInput> {
  var _isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          onChanged: (password) =>
              context.read<SignInCubit>().passwordChanged(password),
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

  String? _getPasswordInputErrorMessage(SignInState state) {
    if (state.password.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return passwordInputErrorMessages[state.password.error];
  }
}

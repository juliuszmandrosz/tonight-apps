import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/auth/sign_up/sign_up_cubit.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_translations/raver_translations.dart';

class SignUpConfirmPasswordInput extends StatefulWidget {
  const SignUpConfirmPasswordInput({Key? key}) : super(key: key);

  @override
  State<SignUpConfirmPasswordInput> createState() =>
      _SignUpConfirmPasswordInputState();
}

class _SignUpConfirmPasswordInputState
    extends State<SignUpConfirmPasswordInput> {
  var _isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.confirmedPassword != current.confirmedPassword ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          onChanged: (confirmPassword) => context
              .read<SignUpCubit>()
              .confirmedPasswordChanged(confirmPassword),
          obscureText: _isPasswordHidden,
          decoration: InputDecoration(
            labelText: S().confirmPassword,
            errorText: _getConfirmPasswordInputErrorMessage(state),
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

  String? _getConfirmPasswordInputErrorMessage(SignUpState state) {
    if (state.confirmedPassword.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return confirmPasswordInputErrorMessages[state.confirmedPassword.error];
  }
}

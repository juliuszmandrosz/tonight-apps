import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver_account_settings/raver_account_settings.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_translations/raver_translations.dart';

class AccountNewPasswordInput extends StatefulWidget {
  const AccountNewPasswordInput({Key? key}) : super(key: key);

  @override
  State<AccountNewPasswordInput> createState() =>
      _AccountNewPasswordInputState();
}

class _AccountNewPasswordInputState extends State<AccountNewPasswordInput> {
  var _isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
      buildWhen: (previous, current) =>
          previous.newPassword != current.newPassword ||
          previous.newConfirmedPassword != current.newConfirmedPassword ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          onChanged: (password) =>
              context.read<ChangePasswordCubit>().newPasswordChanged(password),
          obscureText: _isPasswordHidden,
          decoration: InputDecoration(
            labelText: S().newPassword,
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

  String? _getPasswordInputErrorMessage(ChangePasswordState state) {
    if (state.newPassword.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return passwordInputErrorMessages[state.newPassword.error];
  }
}

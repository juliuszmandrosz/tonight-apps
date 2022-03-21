import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver_account_settings/raver_account_settings.dart';
import 'package:raver_translations/generated/l10n.dart';

class AccountOldPasswordInput extends StatefulWidget {
  const AccountOldPasswordInput({Key? key}) : super(key: key);

  @override
  State<AccountOldPasswordInput> createState() =>
      _AccountOldPasswordInputState();
}

class _AccountOldPasswordInputState extends State<AccountOldPasswordInput> {
  var _isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
      buildWhen: (previous, current) =>
          previous.oldPassword != current.oldPassword ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          onChanged: (password) =>
              context.read<ChangePasswordCubit>().oldPasswordChanged(password),
          obscureText: _isPasswordHidden,
          decoration: InputDecoration(
            labelText: S().currentPasswordLabel,
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
    if (state.oldPassword.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return oldPasswordInputErrorMessages[state.oldPassword.error];
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/auth/sign_in/sign_in_cubit.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<SignInCubit, SignInState>(
      buildWhen: (previous, current) =>
          previous.signInStatus != current.signInStatus,
      builder: (context, state) {
        return Container(
          decoration: const BoxDecoration(
            color: DefaultColors.whiteColor,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          width: 50,
          height: 50,
          child: RaverIconButton(
            icon: FaIcon(
              FontAwesomeIcons.google,
              color: theme.backgroundColor,
            ),
            onPressed: () => context.read<SignInCubit>().signInWithGoogle(),
          ),
        );
      },
    );
  }
}

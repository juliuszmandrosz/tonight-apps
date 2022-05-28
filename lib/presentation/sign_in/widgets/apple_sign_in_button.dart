import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/auth/sign_in/sign_in_cubit.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver_common/raver_common.dart';

class AppleSignInButton extends StatelessWidget {
  const AppleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      buildWhen: (previous, current) =>
          previous.signInStatus != current.signInStatus,
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: context.surfaceColor,
            shape: BoxShape.circle,
          ),
          width: 50,
          height: 50,
          child: RaverIconButton(
            icon: const FaIcon(FontAwesomeIcons.apple),
            onPressed: () {
              // TODO - implement
            },
          ),
        );
      },
    );
  }
}

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/auth/sign_in/sign_in_cubit.dart';
import 'package:tonight/presentation/commons/icons/tonight_icon_button.dart';

class AppleSignInButton extends StatelessWidget {
  const AppleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.primaryColor,
        shape: BoxShape.circle,
      ),
      width: 50,
      height: 50,
      child: TonightIconButton(
        icon: const FaIcon(FontAwesomeIcons.apple),
        onPressed: () => context.read<SignInCubit>().signInWithApple(),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/build_context_extensions.dart';
import 'package:common/extensions/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/commons/icons/tonight_icon_button.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class PhoneSignInButton extends StatelessWidget {
  const PhoneSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.surfaceColor,
        shape: BoxShape.circle,
      ),
      width: 50,
      height: 50,
      child: TonightIconButton(
        icon: const FaIcon(FontAwesomeIcons.phone),
        onPressed: () {
          context.unfocus();
          context.pushRoute(const SignInWithPhoneNumberRoute());
        },
      ),
    );
  }
}

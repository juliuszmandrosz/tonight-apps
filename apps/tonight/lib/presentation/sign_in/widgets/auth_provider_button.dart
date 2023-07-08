import 'package:common/extensions/build_context_extensions.dart';
import 'package:common/extensions/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/commons/icons/tonight_icon_button.dart';

class AuthProviderButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const AuthProviderButton({
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

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
        icon: FaIcon(icon),
        onPressed: () {
          context.unfocus();
          onPressed();
        },
      ),
    );
  }
}

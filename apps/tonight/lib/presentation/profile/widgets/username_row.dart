import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/commons/icons/tonight_icon_button.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class UsernameRow extends StatelessWidget {
  final String username;

  const UsernameRow({
    required this.username,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TonightHeadline(
          text: username,
          isSmallerVersion: true,
        ),
        const SizedBox(width: 5),
        TonightIconButton(
          onPressed: () => AutoRouter.of(context).push(
            UpdateUsernameRoute(
              currentUsername: username,
            ),
          ),
          icon: const Icon(Icons.mode_edit),
        ),
      ],
    );
  }
}

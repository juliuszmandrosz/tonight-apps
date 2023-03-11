import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/routes/app_router.gr.dart';

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
        RaverHeadline(
          text: username,
          isSmallerVersion: true,
        ),
        const SizedBox(width: 5),
        RaverIconButton(
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

import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

Future<void> showSignInDialog(BuildContext context) async {
  final dialogResult = await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(S().signIn),
        // TODO - add translations
        content: Text('You must sign in to continue.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(S().cancel.toUpperCase()),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(S().signIn.toUpperCase()),
          ),
        ],
      );
    },
  );

  if (dialogResult == true && context.mounted) {
    context.unfocus();
    await context.pushRoute(const SignInRoute());
  }
}

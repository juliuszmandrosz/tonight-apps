import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

Future<void> showConfirmPhoneNumberDialog(BuildContext context) async {
  final result = await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(S().verify),
        content: Text(S().verifyPhoneNumberExplanation),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(S().cancel.toUpperCase()),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(S().verify.toUpperCase()),
          ),
        ],
      );
    },
  );

  if (result == true && context.mounted) {
    context.unfocus();
    await context.pushRoute(const VerifyPhoneNumberRoute());
  }
}

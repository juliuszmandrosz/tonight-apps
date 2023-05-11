import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

Future<bool> showConfirmPhoneNumberDialog(BuildContext context) async {
  final confirmNumberResult = await showDialog(
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

  if (confirmNumberResult == true && context.mounted) {
    context.unfocus();
    final result = await context.pushRoute<bool>(
        const VerifyPhoneNumberRoute());
    return result ?? false;
  }

  return false;
}

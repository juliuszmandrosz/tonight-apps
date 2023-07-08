import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/core/extensions/bloc_extensions.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

Future<bool> showConfirmPhoneNumberDialog(BuildContext context) async {
  final isUserAnonymous = context.readAuthCubit.checkIfUserIsAnonymous();
  final confirmNumberResult = await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(isUserAnonymous ? S().signIn : S().verify),
        content: Text(isUserAnonymous
            // TODO - add translation
            ? 'Aby dodać zdjęcie i móc zdobywać nagrody nalezy zalogowac sie do aplikacji za pomocą numeru telefonu'
            : S().verifyPhoneNumberExplanation),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(S().cancel.toUpperCase()),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(
              isUserAnonymous
                  ? S().signIn.toUpperCase()
                  : S().verify.toUpperCase(),
            ),
          ),
        ],
      );
    },
  );

  if (confirmNumberResult == true && context.mounted) {
    context.unfocus();
    final result = await context.pushRoute<bool>(
      VerifyPhoneNumberRoute(isUserAnonymous: isUserAnonymous),
    );
    return result ?? false;
  }

  return false;
}

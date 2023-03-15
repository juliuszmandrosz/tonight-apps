import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: FloatingActionButton.extended(
        onPressed: () async {
          final result = await context.showConfirmationDialogWithCustomMessage(
            S().confirmSignOut,
          );

          if (context.mounted && (result ?? false)) {
            context.read<AuthCubit>().signOut();
            AutoRouter.of(context).replace(const SignInRoute());
          }
        },
        label: Text(S().signOut),
        icon: const FaIcon(FontAwesomeIcons.arrowRightFromBracket),
      ),
    );
  }
}

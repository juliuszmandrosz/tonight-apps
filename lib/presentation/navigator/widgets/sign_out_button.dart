import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

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

          if (result ?? false) {
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

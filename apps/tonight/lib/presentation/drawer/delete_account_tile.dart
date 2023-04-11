import 'package:auth/auth.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translations/translations.dart';

class DeleteAccountTile extends StatelessWidget {
  const DeleteAccountTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerTile(
      icon: FontAwesomeIcons.trash,
      label: S().deleteAccount,
      onTap: () async {
        final result = await context.showConfirmationDialogWithCustomMessage(
          S().confirmDeleteAccount,
        );

        if (context.mounted && (result ?? false)) {
          context.read<AuthCubit>().deleteAccount();
        }
      },
    );
  }
}

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/profile/profile_cubit.dart';
import 'package:tonight/presentation/profile/widgets/profile_menu_list_tile.dart';
import 'package:translations/translations.dart';

class DeleteAccountTile extends StatelessWidget {
  const DeleteAccountTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileMenuListTile(
      title: S().deleteAccount,
      onTap: () async {
        final result = await context.showConfirmationDialogWithCustomMessage(
          S().confirmDeleteAccount,
        );

        if (context.mounted && (result ?? false)) {
          context.read<ProfileCubit>().deleteAccount();
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/app_settings/app_settings_cubit.dart';
import 'package:raver_translations/generated/l10n.dart';

class ThemeSettingsListTile extends StatelessWidget {
  const ThemeSettingsListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppSettingsCubit, AppSettingsState>(
      buildWhen: ((previous, current) =>
          previous.appSettings.isDarkTheme != current.appSettings.isDarkTheme),
      builder: (context, state) {
        return ListTile(
          title: Text(S().darkTheme),
          trailing: Switch(
            value: state.appSettings.isDarkTheme,
            onChanged: (value) {
              context.read<AppSettingsCubit>().changeTheme(value);
            },
          ),
        );
      },
    );
  }
}

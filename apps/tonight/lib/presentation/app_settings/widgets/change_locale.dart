import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/app_settings/app_settings_cubit.dart';
import 'package:translations/translations.dart';

class ChangeLocale extends StatelessWidget {
  const ChangeLocale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppSettingsCubit, AppSettingsState>(
      builder: (context, state) {
        return ListTile(
          dense: true,
          contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
          title: AutoSizeText(
            S().language,
            maxLines: 1,
            style: context.titleLarge,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: AutoSizeText(
              state.appSettings.locale.toUpperCase(),
              maxLines: 1,
              style:
                  context.titleMedium.copyWith(color: context.secondaryColor),
            ),
          ),
          trailing: const Icon(Icons.mode_edit),
          onTap: () {
            // TODO - implement
          },
        );
      },
    );
  }
}

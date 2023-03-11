import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/injection.dart';
import 'package:raver_account_settings/raver_account_settings.dart';
import 'package:raver_translations/generated/l10n.dart';

class AppVersion extends StatelessWidget {
  const AppVersion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AppInfoCubit>()..loadAppInfo(),
      child: BlocBuilder<AppInfoCubit, AppInfoState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loaded: (packageInfo) => AutoSizeText(
              '${S().appVersion}'
              ' ${packageInfo.version}',
              maxLines: 1,
            ),
          );
        },
      ),
    );
  }
}

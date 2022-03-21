import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver_translations/generated/l10n.dart';
import 'package:raver_account_settings/raver_account_settings.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AppInfoCubit>()..loadAppInfo(),
      child: BlocBuilder<AppInfoCubit, AppInfoState>(
        builder: (context, state) {
          return Scaffold(
            appBar: RaverAppBar(
              title: S().aboutUs,
            ),
            body: Column(
              children: [
                ListTile(
                  title: Text(S().appVersion),
                  trailing: state.maybeWhen(
                    orElse: () => Container(),
                    loaded: (packageInfo) => Text(packageInfo.version),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

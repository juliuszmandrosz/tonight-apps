import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/terms_of_service/terms_of_service_cubit.dart';
import 'package:raver/presentation/profile/widgets/profile_menu_list_tile.dart';
import 'package:raver_translations/raver_translations.dart';

class PrivacyPolicyTile extends StatelessWidget {
  const PrivacyPolicyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileMenuListTile(
      title: S().privacyPolicy,
      onTap: () => context.read<TermsOfServiceCubit>().getPrivacyPolicy(),
    );
  }
}

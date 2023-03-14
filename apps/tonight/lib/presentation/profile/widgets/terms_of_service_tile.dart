import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/terms_of_service/terms_of_service_cubit.dart';
import 'package:tonight/presentation/profile/widgets/profile_menu_list_tile.dart';
import 'package:translations/translations.dart';

class TermsOfServiceTile extends StatelessWidget {
  const TermsOfServiceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileMenuListTile(
      title: S().termsOfService,
      onTap: () => context.read<TermsOfServiceCubit>().getTermsOfService(),
    );
  }
}

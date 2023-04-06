import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/terms_of_service/terms_of_service_cubit.dart';
import 'package:translations/translations.dart';

class TermsOfServiceTile extends StatelessWidget {
  const TermsOfServiceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerTile(
      icon: FontAwesomeIcons.bookBookmark,
      label: S().termsOfService,
      onTap: () => context.read<TermsOfServiceCubit>().getTermsOfService(),
    );
  }
}

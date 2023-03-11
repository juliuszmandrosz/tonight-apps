import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class ClubFiltersSubmitButton extends StatelessWidget {
  const ClubFiltersSubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: MediaQuery.of(context).viewInsets.bottom == 0,
      child: SizedBox(
        width: 300,
        child: FloatingActionButton.extended(
          onPressed: () {
            final filtersCubit = context.read<ClubFiltersCubit>();
            filtersCubit.submitFilters(isMenuFilterApplied: true);
            context.popRoute();
          },
          label: Text(S().applyFilters),
          icon: const FaIcon(FontAwesomeIcons.check),
        ),
      ),
    );
  }
}

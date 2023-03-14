import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class ClubFiltersRow extends StatelessWidget {
  const ClubFiltersRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubFiltersCubit, ClubFiltersState>(
      buildWhen: (previous, current) =>
          previous.isMenuFilterApplied != current.isMenuFilterApplied ||
          previous.isFilterApplied != current.isFilterApplied,
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () => context.pushRoute(
                  ClubFiltersRoute(blocContext: context),
                ),
                child: Text(
                  S().filters,
                  style: context.bodyText2.copyWith(
                    color: state.isMenuFilterApplied
                        ? context.primaryColor
                        : context.onSurfaceColor,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    width: 2,
                    color: state.isMenuFilterApplied
                        ? context.primaryColor
                        : context.outlineColor.darken(0.3),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: OutlinedButton(
                onPressed: state.isFilterApplied
                    ? () => context.read<ClubFiltersCubit>().resetFilters()
                    : null,
                child: Text(
                  S().clearFilters,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

import 'package:common/extensions/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/wall_photos_filters/wall_photos_filters_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

class WallPhotoFiltersShowWholeWorld extends StatelessWidget {
  const WallPhotoFiltersShowWholeWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WallPhotosFiltersCubit, WallPhotosFiltersState>(
      buildWhen: (p, c) =>
          p.filters.showPhotosFromClubsInRangeFilter.enabled !=
          c.filters.showPhotosFromClubsInRangeFilter.enabled,
      builder: (context, state) {
        return ListTileTheme(
          contentPadding: const EdgeInsets.all(0),
          dense: true,
          child: ExpansionTile(
            leading: TonightHeadline(
              text: S().showFromAroundTheWorld,
              isSmallerVersion: true,
            ),
            title: const SizedBox.shrink(),
            children: [
              RadioListTile<bool>(
                contentPadding: EdgeInsets.zero,
                activeColor: context.primaryColor,
                title: Text(S().yes),
                value: true,
                groupValue:
                    !state.filters.showPhotosFromClubsInRangeFilter.enabled,
                onChanged: (value) => context
                    .read<WallPhotosFiltersCubit>()
                    .changeShowWholeWorldValue(true),
              ),
              RadioListTile<bool>(
                contentPadding: EdgeInsets.zero,
                activeColor: context.primaryColor,
                title: Text(S().no),
                value: false,
                groupValue:
                    !state.filters.showPhotosFromClubsInRangeFilter.enabled,
                onChanged: (value) => context
                    .read<WallPhotosFiltersCubit>()
                    .changeShowWholeWorldValue(false),
              ),
            ],
          ),
        );
      },
    );
  }
}

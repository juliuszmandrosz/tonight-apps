import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/responsive_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/wall_photos/wall_photos_bloc.dart';
import 'package:tonight/application/wall_photos_filters/wall_photos_filters_cubit.dart';
import 'package:translations/translations.dart';

class WallPhotoFiltersSubmitButton extends StatelessWidget {
  const WallPhotoFiltersSubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<WallPhotosFiltersCubit, WallPhotosFiltersState>(
      listenWhen: (previous, current) =>
          previous.isSubmitting != current.isSubmitting,
      listener: (context, state) {
        context.read<WallPhotosBloc>().add(
              WallPhotosEvent.menuFiltersApplied(
                filters: state.filters,
                appliedFilters: state.appliedFilters,
              ),
            );
        context.popRoute();
      },
      child: Visibility(
        visible: context.viewInsets.bottom == 0,
        child: SizedBox(
          width: 300,
          child: FloatingActionButton.extended(
            onPressed: () =>
                context.read<WallPhotosFiltersCubit>().submitMenuFilters(),
            label: Text(S().applyFilters),
            icon: const FaIcon(FontAwesomeIcons.check),
          ),
        ),
      ),
    );
  }
}

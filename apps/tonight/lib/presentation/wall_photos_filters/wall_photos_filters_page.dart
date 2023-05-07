import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/wall_photos/wall_photos_bloc.dart';
import 'package:tonight/application/wall_photos_filters/wall_photos_filters_cubit.dart';
import 'package:tonight/infrastructure/wall_photos/filters/wall_photo_filters.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/wall_photos_filters/widgets/wall_photo_filters_show_whole_world.dart';
import 'package:tonight/presentation/wall_photos_filters/widgets/wall_photo_filters_submit_button.dart';
import 'package:translations/translations.dart';

class WallPhotoFiltersPage extends StatelessWidget {
  final BuildContext blocContext;
  final WallPhotoFilters selectedFilters;

  const WallPhotoFiltersPage({
    required this.blocContext,
    required this.selectedFilters,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: blocContext.read<WallPhotosBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              getIt<WallPhotosFiltersCubit>()..initFilters(selectedFilters),
        ),
      ],
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: TonightAppBar(title: S().filters),
        floatingActionButton: const WallPhotoFiltersSubmitButton(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: const [
                WallPhotoFiltersShowWholeWorld(),
                SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

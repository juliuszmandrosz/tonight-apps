import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/add_wall_photo/cubit/add_wall_photo_cubit.dart';
import 'package:tonight/domain/time_tasks/time_task_entity.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/add_wall_photo/widgets/add_wall_photo_bottom_bar.dart';
import 'package:tonight/presentation/add_wall_photo/widgets/add_wall_photo_button.dart';
import 'package:tonight/presentation/add_wall_photo/widgets/add_wall_photo_club_tile.dart';
import 'package:tonight/presentation/add_wall_photo/widgets/add_wall_photo_event_tile.dart';
import 'package:tonight/presentation/add_wall_photo/widgets/add_wall_photo_preview.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:translations/translations.dart';

class AddWallPhotoPage extends StatelessWidget {
  final String photoPath;
  final String heroTag;
  final bool isSelfie;
  final Option<Event> event;
  final Option<TimeTask> timeTask;

  const AddWallPhotoPage({
    required this.photoPath,
    required this.heroTag,
    required this.isSelfie,
    required this.event,
    required this.timeTask,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => getIt<AddWallPhotoCubit>()
        ..initState(
          photoPath: photoPath,
          isSelfie: isSelfie,
          event: event,
          timeTask: timeTask,
        ),
      child: TonightOverlay(
        child: SafeArea(
          child: Scaffold(
            backgroundColor: context.backgroundColor,
            appBar: TonightAppBar(
              title: S().publish,
              backgroundColor: context.backgroundColor,
            ),
            bottomNavigationBar: const AddWallPhotoBottomBar(),
            floatingActionButton: AddWallPhotoButton(event: event),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.endContained,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  AddWallPhotoPreview(
                    photoPath: photoPath,
                    heroTag: heroTag,
                    isSelfie: isSelfie,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Divider(
                          color: context.dividerColor,
                        ),
                        const SizedBox(height: 4),
                        const AddWallPhotoClubTile(),
                        const AddWallPhotoEventTile(),
                        const SizedBox(height: 150),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

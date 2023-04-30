import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/add_wall_photo/add_wall_photo_cubit.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/add_wall_photo/widgets/add_wall_photo_button.dart';
import 'package:tonight/presentation/add_wall_photo/widgets/add_wall_photo_club_tile.dart';
import 'package:tonight/presentation/add_wall_photo/widgets/add_wall_photo_event_tile.dart';
import 'package:tonight/presentation/add_wall_photo/widgets/add_wall_photo_preview.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';

class AddWallPhotoPage extends StatelessWidget {
  final String photoPath;
  final String heroTag;
  final bool isSelfie;
  final Option<Event> event;

  const AddWallPhotoPage({
    required this.photoPath,
    required this.heroTag,
    required this.isSelfie,
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) {
        final locationCubit = context.read<UserLocationCubit>();
        final photoCubit = getIt<AddWallPhotoCubit>();
        photoCubit.initState(
          photoPath: photoPath,
          isSelfie: isSelfie,
          event: event,
        );
        if (locationCubit.state.isPermissionGranted && event.isNone()) {
          photoCubit.fetchNearestClubs(
            locationCubit.getCurrentLatLngOrCrash(),
          );
        }
        return photoCubit;
      },
      child: TonightOverlay(
        child: Scaffold(
          // TODO - add translation
          appBar: const TonightAppBar(title: 'Opublikuj'),
          floatingActionButton: AddWallPhotoButton(event: event),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 30),
                AddWallPhotoPreview(
                  photoPath: photoPath,
                  heroTag: heroTag,
                  isSelfie: isSelfie,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: const [
                      SizedBox(height: 30),
                      Divider(),
                      SizedBox(height: 16),
                      AddWallPhotoClubTile(),
                      SizedBox(height: 16),
                      AddWallPhotoEventTile(),
                      SizedBox(height: 80),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

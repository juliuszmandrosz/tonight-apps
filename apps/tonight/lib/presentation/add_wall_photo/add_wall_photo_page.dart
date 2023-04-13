import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/add_wall_photo/add_wall_photo_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/add_wall_photo/widgets/add_wall_photo_button.dart';
import 'package:tonight/presentation/add_wall_photo/widgets/add_wall_photo_club_tile.dart';
import 'package:tonight/presentation/add_wall_photo/widgets/add_wall_photo_event_tile.dart';
import 'package:tonight/presentation/add_wall_photo/widgets/add_wall_photo_preview.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';

class AddWallPhotoPage extends StatelessWidget {
  final XFile photo;
  final String heroTag;

  const AddWallPhotoPage({
    required this.photo,
    required this.heroTag,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddWallPhotoCubit>()..initState(photo),
      child: Scaffold(
        // TODO - add translation
        appBar: const TonightAppBar(title: 'Opublikuj'),
        floatingActionButton: const AddWallPhotoButton(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 30),
              AddWallPhotoPreview(
                photo: photo,
                heroTag: heroTag,
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
    );
  }
}

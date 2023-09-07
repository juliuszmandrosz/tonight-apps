import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/photo_preview/photo_preview_cubit.dart';
import 'package:tonight/domain/challenges/challenge_entity.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/image_back_button.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class PhotoPreviewPage extends StatelessWidget {
  final XFile photo;
  final Challenge challenge;
  final bool isSelfie;

  const PhotoPreviewPage({
    required this.photo,
    required this.challenge,
    required this.isSelfie,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PhotoPreviewCubit>(),
      child: Builder(
        builder: (context) {
          return TonightOverlay(
            child: Scaffold(
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () => context
                    .read<PhotoPreviewCubit>()
                    .addStory(photo, challenge, isSelfie),
                label: Text(S().publish),
                icon: const FaIcon(FontAwesomeIcons.paperPlane),
              ),
              body: BlocListener<PhotoPreviewCubit, PhotoPreviewState>(
                listener: (context, state) {
                  state.snackbarMessage.fold(
                    () {},
                    (msg) => context.showSnackbarMessage(msg),
                  );

                  state.addStoryStatus.isLoading()
                      ? context.loaderOverlay.show()
                      : context.loaderOverlay.hide();

                  if (state.addStoryStatus.isSuccess()) {
                    context.router.popUntil((route) =>
                        route.settings.name == WelcomeLoaderRoute.name);
                    // TODO - add translation
                    context.showSnackbarMessage('Dodano Story!');
                  }
                },
                child: SafeArea(
                  child: Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 9 / 16,
                        child: isSelfie
                            ? TransformHorizontally(
                                child: Image.file(File(photo.path)),
                              )
                            : Image.file(File(photo.path)),
                      ),
                      const Positioned(
                        top: 5,
                        left: 5,
                        child: ImageBackButton(isTransparent: true),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

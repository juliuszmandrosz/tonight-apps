import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/video_preview/video_preview_cubit.dart';
import 'package:tonight/domain/challenges/challenge_entity.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/image_back_button.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';
import 'package:video_player/video_player.dart';

class VideoPreviewPage extends StatefulWidget {
  final XFile video;
  final Challenge challenge;
  final bool isSelfie;

  const VideoPreviewPage({
    required this.video,
    required this.challenge,
    required this.isSelfie,
    Key? key,
  }) : super(key: key);

  @override
  State<VideoPreviewPage> createState() => _VideoPreviewPageState();
}

class _VideoPreviewPageState extends State<VideoPreviewPage> {
  late VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();
    _initVideo();
  }

  _initVideo() async {
    _videoController = VideoPlayerController.file(File(widget.video.path));
    await _videoController.initialize();
    await _videoController.setLooping(true);
    await _videoController.play();
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _videoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<VideoPreviewCubit>(),
      child: Builder(
        builder: (context) {
          return TonightOverlay(
            child: Scaffold(
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () => context.read<VideoPreviewCubit>().addStory(
                      widget.video,
                      widget.challenge,
                      _videoController.value.duration.inMilliseconds,
                      widget.isSelfie,
                    ),
                label: Text(S().publish),
                icon: const FaIcon(FontAwesomeIcons.paperPlane),
              ),
              body: BlocListener<VideoPreviewCubit, VideoPreviewState>(
                listener: (context, state) {
                  state.snackbarMessage.fold(
                    () {},
                    (msg) => context.showSnackbarMessage(msg),
                  );

                  if (state.addStoryStatus.isLoading()) {
                    _videoController.pause();
                  }

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
                        aspectRatio: _videoController.value.aspectRatio,
                        child: widget.isSelfie
                            ? TransformHorizontally(
                                child: VideoPlayer(_videoController),
                              )
                            : VideoPlayer(_videoController),
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

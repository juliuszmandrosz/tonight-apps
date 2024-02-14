import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translations/translations.dart';
import 'package:video_player/video_player.dart';

class AddChallengeStoryVideoPreview extends StatefulWidget {
  final String videoPath;
  final double bottomHeight;
  final VoidCallback onRetry;
  final bool isSelfie;

  const AddChallengeStoryVideoPreview({
    required this.videoPath,
    required this.bottomHeight,
    required this.onRetry,
    required this.isSelfie,
    Key? key,
  }) : super(key: key);

  @override
  State<AddChallengeStoryVideoPreview> createState() =>
      _AddChallengeStoryVideoPreviewState();
}

class _AddChallengeStoryVideoPreviewState
    extends State<AddChallengeStoryVideoPreview>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    _videoPlayerController = VideoPlayerController.file(File(widget.videoPath))
      ..initialize().then((_) {
        _videoPlayerController.setLooping(true);
        _videoPlayerController.play();
        setState(() {});
      });

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Column(
        children: [
          Expanded(
            child: _videoPlayerController.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _videoPlayerController.value.aspectRatio,
                    child: VideoPlayer(_videoPlayerController),
                  )
                : Container(),
          ),
          SizedBox(
            height: widget.bottomHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 140,
                  height: 45,
                  child: OutlinedButton.icon(
                    onPressed: widget.onRetry,
                    icon: const FaIcon(
                      FontAwesomeIcons.arrowsRotate,
                      size: 14,
                    ),
                    label: Text(S().retry),
                  ),
                ),
                SizedBox(
                  width: 140,
                  height: 45,
                  child: ElevatedButton.icon(
                    onPressed: () => {},
                    icon: const FaIcon(
                      FontAwesomeIcons.solidPaperPlane,
                      size: 14,
                    ),
                    label: Text(S().publish),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

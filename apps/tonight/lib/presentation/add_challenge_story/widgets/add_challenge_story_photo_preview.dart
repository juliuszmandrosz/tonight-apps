import 'dart:io';

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/challenges/challenge_entity.dart';
import 'package:translations/translations.dart';

class AddChallengeStoryPhotoPreview extends StatefulWidget {
  final String photoPath;
  final double bottomHeight;
  final VoidCallback onRetry;
  final bool isSelfie;
  final Challenge challenge;

  const AddChallengeStoryPhotoPreview({
    required this.photoPath,
    required this.bottomHeight,
    required this.onRetry,
    required this.isSelfie,
    required this.challenge,
    Key? key,
  }) : super(key: key);

  @override
  State<AddChallengeStoryPhotoPreview> createState() =>
      _AddChallengeStoryPhotoPreviewState();
}

class _AddChallengeStoryPhotoPreviewState
    extends State<AddChallengeStoryPhotoPreview>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

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

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget get _photo => Image.file(
        File(widget.photoPath),
        fit: BoxFit.cover,
      );

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Column(
        children: [
          Expanded(
            child:
                widget.isSelfie ? TransformHorizontally(child: _photo) : _photo,
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

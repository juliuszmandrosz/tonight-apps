import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:tonight/domain/time_tasks/time_task_entity.dart';
import 'package:tonight/presentation/core/image_back_button.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class WallPhotoPreview extends StatefulWidget {
  final String photoPath;
  final String heroTag;
  final double bottomHeight;
  final VoidCallback onRetry;
  final bool isSelfie;
  final dartz.Option<Event> event;
  final dartz.Option<TimeTask> timeTask;

  const WallPhotoPreview({
    required this.photoPath,
    required this.heroTag,
    required this.bottomHeight,
    required this.onRetry,
    required this.isSelfie,
    required this.event,
    required this.timeTask,
    Key? key,
  }) : super(key: key);

  @override
  State<WallPhotoPreview> createState() => _WallPhotoPreviewState();
}

class _WallPhotoPreviewState extends State<WallPhotoPreview>
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
          if (widget.timeTask.isSome())
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  const ImageBackButton(isTransparent: true),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                      ),
                      child: Text(
                        Intl.getCurrentLocale().toUpperCase() == 'PL'
                            ? widget.timeTask.getOrCrash().descriptionPl
                            : widget.timeTask.getOrCrash().descriptionEn,
                        style: context.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
            child: Hero(
              tag: widget.heroTag,
              child: widget.isSelfie
                  ? TransformHorizontally(child: _photo)
                  : _photo,
            ),
          ),
          SizedBox(
            height: widget.bottomHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 130,
                  height: 45,
                  child: OutlinedButton.icon(
                    onPressed: widget.onRetry,
                    icon: const FaIcon(
                      FontAwesomeIcons.arrowsRotate,
                      size: 18,
                    ),
                    label: Text(
                      S().retry,
                      style: context.titleMedium,
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 45,
                  child: ElevatedButton.icon(
                    onPressed: () => context.pushRoute(
                      AddWallPhotoRoute(
                        photoPath: widget.photoPath,
                        heroTag: widget.heroTag,
                        isSelfie: widget.isSelfie,
                        event: widget.event,
                        timeTask: widget.timeTask,
                      ),
                    ),
                    icon: const FaIcon(
                      FontAwesomeIcons.forward,
                      size: 18,
                    ),
                    label: Text(
                      S().next,
                      style: context.titleMedium,
                    ),
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

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class WallPhotoPreview extends StatefulWidget {
  final String photoPath;
  final String heroTag;
  final double height;
  final VoidCallback onRetry;
  final bool isSelfie;
  final dartz.Option<Event> event;

  const WallPhotoPreview({
    required this.photoPath,
    required this.heroTag,
    required this.height,
    required this.onRetry,
    required this.isSelfie,
    required this.event,
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

  Widget get _photo =>
      Image.file(
        File(widget.photoPath),
        fit: BoxFit.cover,
        filterQuality: FilterQuality.high,
      );

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Column(
        children: [
          Expanded(
            child: Hero(
              tag: widget.heroTag,
              child: widget.isSelfie
                  ? TransformHorizontally(child: _photo)
                  : _photo,
            ),
          ),
          SizedBox(
            height: widget.height,
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
                    // TODO - add translation
                    label: Text(
                      'Ponów',
                      style: context.titleMedium,
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 45,
                  child: ElevatedButton.icon(
                    onPressed: () =>
                        context.pushRoute(
                          AddWallPhotoRoute(
                            photoPath: widget.photoPath,
                            heroTag: widget.heroTag,
                            isSelfie: widget.isSelfie,
                            event: widget.event,
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

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:common/presentation/transform_horizontally.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class WallPhotoPreview extends StatefulWidget {
  final String photoPath;
  final String heroTag;
  final double height;
  final VoidCallback onRetry;

  const WallPhotoPreview({
    required this.photoPath,
    required this.heroTag,
    required this.height,
    required this.onRetry,
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

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Column(
        children: [
          Expanded(
            child: Hero(
              tag: widget.heroTag,
              child: TransformHorizontally(
                child: Image.file(
                  File(widget.photoPath),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
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
                    onPressed: () => context.pushRoute(
                      AddWallPhotoRoute(
                        photoPath: widget.photoPath,
                        heroTag: widget.heroTag,
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

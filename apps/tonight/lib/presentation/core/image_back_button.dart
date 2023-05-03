import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';

class ImageBackButton extends StatelessWidget {
  final bool isTransparent;

  const ImageBackButton({
    this.isTransparent = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.pop();
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isTransparent ? Colors.transparent : context.surfaceColor,
        ),
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Icon(
            Icons.arrow_back_rounded,
            size: 24,
          ),
        ),
      ),
    );
  }
}

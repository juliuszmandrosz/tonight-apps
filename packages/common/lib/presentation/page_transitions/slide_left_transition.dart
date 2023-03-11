import 'package:flutter/material.dart';

Widget slideLeftTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return SlideTransition(
    position: Tween(
      begin: const Offset(1, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn),
    ),
    child: child,
  );
}

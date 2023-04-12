import 'package:flutter/material.dart';

Widget slideUpTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return SlideTransition(
    position: Tween(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn),
    ),
    child: child,
  );
}

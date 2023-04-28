import 'dart:math';

import 'package:flutter/material.dart';

const minColorValue = 80;
const maxColorValue = 200;

Color generateColorFromUserId(String userId) {
  final hash = userId.hashCode;
  final random = Random(hash);
  final r = _generateColorComponent(random);
  final g = _generateColorComponent(random);
  final b = _generateColorComponent(random);
  return Color.fromRGBO(r, g, b, 1);
}

int _generateColorComponent(Random random) {
  return minColorValue +
      (random.nextDouble() * (maxColorValue - minColorValue)).toInt();
}

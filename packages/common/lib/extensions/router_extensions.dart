import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

extension RouterX on BuildContext {
  AutoRoutePage? get previousRoute =>
      router.stack.length > 1 ? router.stack[router.stack.length - 2] : null;
}

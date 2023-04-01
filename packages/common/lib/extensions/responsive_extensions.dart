import 'package:flutter/cupertino.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

extension ResponsiveX on BuildContext {
  bool get isMobile => ResponsiveWrapper.of(this).isMobile;

  bool get isDesktop => ResponsiveWrapper.of(this).isDesktop;

  bool get isTablet => ResponsiveWrapper.of(this).isTablet;
}

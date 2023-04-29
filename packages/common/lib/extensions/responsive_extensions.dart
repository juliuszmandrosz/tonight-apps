import 'package:flutter/cupertino.dart';

extension ResponsiveX on BuildContext {
  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;

  EdgeInsets get padding => MediaQuery.of(this).padding;

  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;

  bool get isKeyboardOpen => viewInsets.bottom > 0;
}

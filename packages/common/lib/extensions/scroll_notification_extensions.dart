import 'package:flutter/cupertino.dart';

extension ScrollNotificationX on ScrollNotification {
  bool get isAtEdge {
    if (!metrics.atEdge) return false;
    return metrics.pixels != 0;
  }
}

import 'package:intl/intl.dart';

extension DateFormatter on DateTime {
  String formatDate(DateFormat format) {
    return format.format(this);
  }
}

import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String formatDateToDomain() {
    final DateFormat formatter = DateFormat('yyyy-MM-dd hh:mm');
    return formatter.format(this);
  }
}

extension StringX on String {
  DateTime formatDateFromDomain() {
    return DateTime.parse(this);
  }
}

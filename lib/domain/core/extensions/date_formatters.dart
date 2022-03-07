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

  String formatDateTimeToMonthAndDay() {
    final DateFormat formatter = DateFormat('dd.MM');
    return formatter.format(DateTime.parse(this));
  }

  String formatDateTimeToHour() {
    // TODO - add 24h format
    final DateFormat formatter = DateFormat('HH:mm');
    return formatter.format(DateTime.parse(this));
  }
}

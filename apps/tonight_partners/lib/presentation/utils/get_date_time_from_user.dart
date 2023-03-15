import 'package:flutter/material.dart';

Future<DateTime?> getDateTimeFromUser(
  BuildContext context, {
  DateTime? initialDate,
}) async {
  final now = DateTime.now();

  final date = await showDatePicker(
    context: context,
    initialDate: initialDate ?? DateTime.now(),
    firstDate: initialDate ?? DateTime.now(),
    lastDate: DateTime.now().add(
      const Duration(days: 150),
    ),
  );

  if (date == null) return null;

  if (context.mounted) {
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(
        hour: now.hour,
        minute: now.minute,
      ),
    );

    if (time == null) return null;

    return DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );
  }

  return null;
}

import 'package:flutter/material.dart';
import 'package:tonight/presentation/events/widgets/event_city_picker_field.dart';
import 'package:tonight/presentation/events/widgets/event_date_picker_field.dart';

class EventFiltersRow extends StatelessWidget {
  const EventFiltersRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Flexible(
          flex: 3,
          child: EventDatePickerField(),
        ),
        SizedBox(width: 8),
        Flexible(
          flex: 4,
          child: EventCityPickerField(),
        ),
      ],
    );
  }
}

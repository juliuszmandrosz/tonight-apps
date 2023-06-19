import 'package:flutter/material.dart';
import 'package:tonight/presentation/events/widgets/event_filters_row.dart';
import 'package:tonight/presentation/events/widgets/event_search_field.dart';

class EventsSliverAppBar extends StatelessWidget {
  const EventsSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        EventSearchField(),
        SizedBox(height: 12),
        EventFiltersRow(),
      ],
    );
  }
}

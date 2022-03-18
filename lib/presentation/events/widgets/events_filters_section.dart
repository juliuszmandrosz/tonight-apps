import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/events/widgets/events_search_field.dart';

class EventsFiltersSection extends StatelessWidget {
  const EventsFiltersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Expanded(
            child: EventsSearchField(),
          ),
        ],
      ),
    );
  }
}

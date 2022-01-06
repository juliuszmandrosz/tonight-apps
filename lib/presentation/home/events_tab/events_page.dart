import 'package:flutter/material.dart';
import 'package:raver/presentation/home/widgets/event_search_bar.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [EventSearchBar(onSearch: (){})],
    );
  }
}

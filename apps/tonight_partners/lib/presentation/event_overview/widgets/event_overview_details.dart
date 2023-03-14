import 'package:flutter/material.dart';
import 'package:tonight_partners/presentation/event_overview/widgets/event_details/event_overview_description.dart';
import 'package:tonight_partners/presentation/event_overview/widgets/event_details/event_overview_dj_channel.dart';
import 'package:tonight_partners/presentation/event_overview/widgets/event_details/event_overview_event_name.dart';
import 'package:tonight_partners/presentation/event_overview/widgets/event_details/event_overview_facebook_event.dart';

class EventOverviewDetails extends StatelessWidget {
  const EventOverviewDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        EventOverviewEventName(),
        SizedBox(height: 20),
        EventOverviewDescription(),
        SizedBox(height: 20),
        EventOverviewFacebookEvent(),
        SizedBox(height: 20),
        EventOverviewDjChannel(),
      ],
    );
  }
}

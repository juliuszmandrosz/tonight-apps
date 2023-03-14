import 'package:flutter/material.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_artist_name.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_cost.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_description.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_dj_channel_url.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_dress_code.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_end_date.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_event_name.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_facebook_url.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_minimum_age.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_music.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_photo.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_start_date.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_ticket_pools.dart';

class EventSummaryStep extends StatelessWidget {
  const EventSummaryStep({Key? key}) : super(key: key);

  final eventSummaryTiles = const [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: const [
          EventSummaryPhoto(),
          SizedBox(height: 20),
          EventSummaryEventName(),
          SizedBox(height: 20),
          EventSummaryCost(),
          SizedBox(height: 20),
          EventSummaryDescription(),
          EventSummaryStartDate(),
          SizedBox(height: 20),
          EventSummaryEndDate(),
          SizedBox(height: 20),
          EventSummaryMinimumAge(),
          SizedBox(height: 20),
          EventSummaryDressCode(),
          SizedBox(height: 20),
          EventSummaryMusic(),
          SizedBox(height: 20),
          EventSummaryTicketPools(),
          SizedBox(height: 20),
          EventSummaryArtistName(),
          EventSummaryFacebookUrl(),
          EventSummaryDjChannelUrl(),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

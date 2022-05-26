import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_artist_name.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_description.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_dj_channel_url.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_dress_code.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_end_date.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_facebook_url.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_minimum_age.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_music.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_ticket_pools.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_start_date.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_event_name.dart';

class EventSummaryStep extends StatelessWidget {
  const EventSummaryStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: const [
          EventSummaryEventName(),
          SizedBox(height: 30),
          EventSummaryDescription(),
          EventSummaryStartDate(),
          SizedBox(height: 30),
          EventSummaryEndDate(),
          SizedBox(height: 30),
          EventSummaryMinimumAge(),
          SizedBox(height: 30),
          EventSummaryDressCode(),
          SizedBox(height: 30),
          EventSummaryMusic(),
          SizedBox(height: 30),
          EventSummaryTicketPools(),
          EventSummaryArtistName(),
          EventSummaryFacebookUrl(),
          EventSummaryDjChannelUrl(),
        ],
      ),
    );
  }
}

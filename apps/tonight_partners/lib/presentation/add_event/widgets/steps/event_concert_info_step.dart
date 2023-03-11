import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/add_event/widgets/form_inputs/event_artist_name_input.dart';

import 'package:raver_partners/presentation/add_event/widgets/form_inputs/event_is_concert_input.dart';

class EventConcertInfoStep extends StatelessWidget {
  const EventConcertInfoStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        EventIsConcertInput(),
        SizedBox(height: 20),
        EventArtistNameInput(),
      ],
    );
  }
}

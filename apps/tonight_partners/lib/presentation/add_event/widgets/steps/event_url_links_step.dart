import 'package:flutter/material.dart';
import 'package:tonight_partners/presentation/add_event/widgets/form_inputs/event_dj_channel_url_input.dart';
import 'package:tonight_partners/presentation/add_event/widgets/form_inputs/event_facebook_url_input.dart.dart';

class EventUrlLinksStep extends StatelessWidget {
  const EventUrlLinksStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        EventFacebookUrlInput(),
        SizedBox(height: 20),
        EventDjChannelUrlInput(),
      ],
    );
  }
}

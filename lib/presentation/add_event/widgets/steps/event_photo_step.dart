import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/add_event/widgets/photo/add_photo_button.dart';
import 'package:raver_partners/presentation/add_event/widgets/photo/event_preview_card.dart';

class EventPhotoStep extends StatelessWidget {
  const EventPhotoStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        AddPhotoButton(),
        SizedBox(height: 20),
        EventPreviewCard(),
      ],
    );
  }
}

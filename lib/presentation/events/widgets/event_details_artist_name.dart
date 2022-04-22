import 'package:flutter/material.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventDetailsArtistName extends StatelessWidget {
  final Event event;

  const EventDetailsArtistName({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${S().live.toUpperCase()} - ${event.artistName!.toUpperCase()}',
              style: textTheme.headline1!.copyWith(
                color: DefaultColors.primaryColor,
              ),
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.music_note,
              color: DefaultColors.primaryColor,
            )
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:raver/domain/events/event_entity.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';

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

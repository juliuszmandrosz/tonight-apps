import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/dashboard/models/tonight_event_model.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class TonightEventInfoRow extends StatelessWidget {
  final TonightEvent event;

  const TonightEventInfoRow({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const containerSize = 40.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          InkWell(
            onTap: () => context.pushRoute(
              ClubDetailsRoute(clubId: event.clubId),
            ),
            child: ProfilePictureContainer(
              imageSize: containerSize,
              profilePictureUrl: event.clubPhotoUrl,
              username: event.clubName,
              textStyle: context.titleSmall,
              backgroundColor: context.surfaceColor,
              textColor: context.onSurfaceColor,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  event.eventName,
                  style: context.titleSmall,
                  maxLines: 1,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                AutoSizeText(
                  '${context.formatDateTimeToLocaleYMD(event.eventStartDateTime)} • '
                  '${event.clubName}',
                  style: context.labelSmall.copyWith(
                    color: context.secondaryColor,
                  ),
                  maxLines: 1,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

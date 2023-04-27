import 'package:common/common.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/events_details/widgets/bottom_bar/event_details_bottom_bar_checkout.dart';
import 'package:tonight/presentation/events_details/widgets/bottom_bar/event_details_bottom_bar_favorite.dart';
import 'package:tonight/presentation/events_details/widgets/bottom_bar/event_details_bottom_bar_location.dart';
import 'package:tonight/presentation/events_details/widgets/bottom_bar/event_details_bottom_bar_share.dart';

class EventDetailsBottomBar extends StatelessWidget {
  final Event event;

  const EventDetailsBottomBar({required this.event, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: EdgeInsets.zero,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: context.dividerColor,
            ),
          ),
          color: context.backgroundColor,
        ),
        child: Row(
          children: [
            EventDetailsBottomBarShare(event: event),
            EventDetailsBottomBarLocation(event: event),
            EventDetailsBottomBarFavorite(event: event),
            EventDetailsBottomBarCheckout(event: event),
          ],
        ),
      ),
    );
  }
}

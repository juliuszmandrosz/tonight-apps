import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/events_details/utils/event_details_formatters.dart';
import 'package:raver/presentation/events_details/widgets/tiles/event_detail_tile.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventDetailsSection extends StatelessWidget {
  final Event event;

  const EventDetailsSection({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: RaverHeadline(text: S().details, isSmallerVersion: true),
        ),
        const SizedBox(height: 15),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
          children: [
            BlocBuilder<EventTicketsCubit, EventTicketsState>(
              builder: (context, state) {
                return state.status.isLoading()
                    ? SpinKitThreeBounce(
                        color: context.onSurfaceColor,
                        size: 18,
                      )
                    : EventDetailTile(
                        icon: FontAwesomeIcons.ticket,
                        value:
                            '${state.eventTickets.getOrCrash().getCurrentPool().ticketPrice}'
                            '${getCurrencySymbolFromCode(event.currency)}',
                        label: S().price,
                      );
              },
            ),
            EventDetailTile(
              icon: FontAwesomeIcons.solidUser,
              value: '${event.minAge}+',
              label: S().minAge,
            ),
            EventDetailTile(
              icon: FontAwesomeIcons.shirt,
              value: event.allowedOutfit,
              label: S().dressCode,
            ),
            EventDetailTile(
              icon: FontAwesomeIcons.music,
              value: displayMusicalGenres(
                event.musicalGenres,
                EventDetailsSeparator.comma,
              ),
              label: S().musicalGenres,
            ),
          ],
        ),
      ],
    );
  }
}

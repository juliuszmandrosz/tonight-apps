import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/events/widgets/event_favorite_button.dart';
import 'package:raver/presentation/events_details/utils/event_details_formatters.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventCard extends StatelessWidget {
  final Event event;
  final bool isFavoriteCard;
  final String heroTag;

  EventCard({
    Key? key,
    required this.event,
    required String heroPhrase,
    this.isFavoriteCard = false,
  })  : heroTag = '${event.id}$heroPhrase',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EventTicketsCubit>()
        ..getEventTickets(clubId: event.clubId, eventId: event.id),
      child: InkWell(
        onTap: () {
          FocusScope.of(context).unfocus();
          AutoRouter.of(context).push(
            EventDetailsRoute(
              event: event,
              heroTag: heroTag,
            ),
          );
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: BlocBuilder<EventTicketsCubit, EventTicketsState>(
            builder: (context, state) {
              return Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Hero(
                        tag: heroTag,
                        child: CachedNetworkImage(
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) => SizedBox(
                            height: 250,
                            child: Center(
                              child: SpinKitThreeBounce(
                                color: context.onSurfaceColor,
                                size: 24,
                              ),
                            ),
                          ),
                          imageUrl: event.eventPhotoUrl,
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          imageBuilder: (context, imageProvider) => Container(
                            height: 250,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 15,
                        child: EventFavoriteButton(event: event),
                      ),
                      if (event.eventStartDateTime.isBefore(DateTime.now()) &&
                          event.eventEndDateTime.isAfter(DateTime.now()))
                        Positioned(
                          top: 15,
                          left: 15,
                          child: Container(
                            decoration: BoxDecoration(
                              color: context.surfaceColor.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.fire,
                                    color: Colors.red.lighten(),
                                  ),
                                  const SizedBox(width: 10),
                                  AutoSizeText(
                                    S().live,
                                    style: context.subtitle1,
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      if (state.eventTickets
                          .fold(() => false, (tickets) => tickets.isSoldOut))
                        // TODO - ref
                        Positioned(
                          top: event.eventStartDateTime
                                      .isBefore(DateTime.now()) &&
                                  event.eventEndDateTime.isAfter(DateTime.now())
                              ? 70
                              : 15,
                          left: 15,
                          child: Container(
                            decoration: BoxDecoration(
                              color: context.surfaceColor.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const FaIcon(FontAwesomeIcons.circleXmark),
                                  const SizedBox(width: 10),
                                  Text(
                                    S().soldOut.toUpperCase(),
                                    style: context.bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      if (_shouldShowTicketsLeftMessage(state.eventTickets
                          .fold(() => null, (tickets) => tickets)))
                        Positioned(
                          // TODO - ref
                          top: event.eventStartDateTime
                                      .isBefore(DateTime.now()) &&
                                  event.eventEndDateTime.isAfter(DateTime.now())
                              ? 70
                              : 15,
                          left: 15,
                          child: Container(
                            decoration: BoxDecoration(
                              color: context.surfaceColor.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const FaIcon(
                                      FontAwesomeIcons.circleExclamation),
                                  const SizedBox(width: 10),
                                  Text(
                                    S().lastTicketsInPool,
                                    style: context.bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      Positioned(
                        bottom: 15,
                        right: 15,
                        left: 15,
                        child: Container(
                          decoration: BoxDecoration(
                            color: context.surfaceColor.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: AutoSizeText(
                              event.eventName,
                              style: context.headline6,
                              textAlign: TextAlign.center,
                              softWrap: true,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        if (event.isConcert && !isFavoriteCard)
                          Column(
                            children: [
                              Row(
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.microphone,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      '${S().concert} - ${event.artistName}',
                                      style: context.subtitle1,
                                      overflow: TextOverflow.fade,
                                      maxLines: 1,
                                      softWrap: false,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                            ],
                          ),
                        Row(
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.building,
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: AutoSizeText(
                                event.clubName,
                                style: context.subtitle1,
                                overflow: TextOverflow.fade,
                                maxLines: 1,
                                softWrap: false,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.calendar,
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            AutoSizeText(
                              context.formatDateTimeToLocaleYMDHM(
                                event.eventStartDateTime,
                              ),
                              textAlign: TextAlign.center,
                              style: context.subtitle1,
                              maxLines: 1,
                            ),
                          ],
                        ),
                        if (!isFavoriteCard)
                          Column(
                            children: [
                              const SizedBox(height: 15),
                              Row(
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.circleInfo,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 10),
                                  AutoSizeText(
                                    displayEventTags(
                                      context,
                                      event,
                                      state.eventTickets.fold(
                                        () => null,
                                        (tickets) => tickets,
                                      ),
                                    ),
                                    style: context.subtitle1,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  // TODO - ref
  bool _shouldShowTicketsLeftMessage(EventTickets? eventTickets) {
    if (eventTickets == null || eventTickets.isSoldOut) return false;
    final currentPool = eventTickets.getCurrentPool();

    final ticketQuantity = currentPool.ticketQuantity;
    final ticketsSold = currentPool.ticketsSold;

    final minTicketCountToShowMessage =
        ticketQuantity <= 20 ? ticketQuantity : (ticketQuantity * 0.2).round();

    return minTicketCountToShowMessage >= ticketQuantity - ticketsSold;
  }
}

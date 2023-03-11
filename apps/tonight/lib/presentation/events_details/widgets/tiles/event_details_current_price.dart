import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:raver/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventDetailsCurrentPrice extends StatelessWidget {
  final Event event;

  const EventDetailsCurrentPrice({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: Align(
        alignment: Alignment.centerLeft,
        child: AutoSizeText(
          S().price,
          style: context.headline6,
          maxLines: 1,
        ),
      ),
      subtitle: BlocBuilder<EventTicketsCubit, EventTicketsState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(top: 15),
            child: state.status.isLoading()
                ? SpinKitThreeBounce(
                    color: context.onSurfaceColor,
                    size: 24,
                  )
                : Text(
                    '${state.eventTickets.getOrCrash().getCurrentTicketPrice()}',
                    style: context.subtitle1
                        .copyWith(color: context.secondaryColor),
                  ),
          );
        },
      ),
    );
  }
}

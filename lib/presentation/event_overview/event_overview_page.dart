import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/extensions/option_extensions.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/event_notifier/event_notifier_cubit.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/core/event_revenue.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
import 'package:raver_partners/presentation/event_overview/widgets/event_overview_details.dart';
import 'package:raver_partners/presentation/event_overview/widgets/event_overview_ticket_pools.dart';
import 'package:raver_translations/raver_translations.dart';

class EventOverviewPage extends StatelessWidget {
  final Event event;

  const EventOverviewPage({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UpcomingLiveEventCubit>(
        param1: context.read<EventNotifierCubit>(),
      )
        ..getEventTickets(event)
        ..addEventToState(event),
      child: Scaffold(
        appBar: RaverPartnersAppBar(title: S().eventOverview),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: BlocConsumer<UpcomingLiveEventCubit, UpcomingLiveEventState>(
            buildWhen: (previous, current) =>
                previous.initialStatus != current.initialStatus ||
                previous.ticketPoolStatus != current.ticketPoolStatus,
            listenWhen: (previous, current) =>
                previous.errorMessage != current.errorMessage,
            listener: (context, state) {
              state.errorMessage.fold(
                () => null,
                (message) => context.showSnackbarMessage(message),
              );
            },
            builder: (context, state) {
              if (state.initialStatus.isLoading()) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (state.initialStatus.isFailure()) {
                context.showSnackbarMessage(S().serverError);
                AutoRouter.of(context).pop();
              }

              return ListView(
                children: [
                  BlocBuilder<UpcomingLiveEventCubit, UpcomingLiveEventState>(
                    buildWhen: (previous, current) =>
                        previous.eventTickets != current.eventTickets,
                    builder: (context, state) {
                      return EventRevenue(
                        ticketSales:
                            state.eventTickets.getOrCrash().ticketSales,
                      );
                    },
                  ),
                  const SizedBox(height: 30),
                  const EventOverviewTicketPools(),
                  const SizedBox(height: 30),
                  const EventOverviewDetails(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

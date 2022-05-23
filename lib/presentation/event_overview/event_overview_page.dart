import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/event_notifier/event_notifier_cubit.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/core/event_revenue.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
import 'package:raver_partners/presentation/event_overview/widgets/cancel_event_button.dart';
import 'package:raver_partners/presentation/event_overview/widgets/event_overview_details.dart';
import 'package:raver_partners/presentation/event_overview/widgets/event_overview_ticket_pools.dart';
import 'package:raver_partners/presentation/event_overview/widgets/postpone_event_button.dart';
import 'package:raver_translations/raver_translations.dart';
import 'package:formz/formz.dart';

class EventOverviewPage extends StatelessWidget {
  final Event event;

  const EventOverviewPage({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMoreThanDayLeftToEvent = event.eventStartDateTime.isAfter(
      DateTime.now().add(const Duration(days: 1)),
    );
    return BlocProvider(
      create: (context) => getIt<UpcomingLiveEventCubit>(
        param1: context.read<EventNotifierCubit>(),
      )
        ..getEventTickets(event)
        ..addEventToState(event),
      child: LoaderOverlay(
        overlayColor: context.shadowColor,
        child: Scaffold(
          appBar: RaverPartnersAppBar(title: S().eventOverview),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: BlocConsumer<UpcomingLiveEventCubit, UpcomingLiveEventState>(
              buildWhen: (previous, current) =>
                  previous.initialStatus != current.initialStatus ||
                  previous.ticketPoolStatus != current.ticketPoolStatus,
              listenWhen: (previous, current) =>
                  previous.errorMessage != current.errorMessage ||
                  previous.cancelEventStatus != current.cancelEventStatus ||
                  previous.editEventDetailsStatus !=
                      current.editEventDetailsStatus,
              listener: (context, state) {
                state.errorMessage.fold(
                  () {},
                  (message) => context.showSnackbarMessage(message),
                );

                if (state.editEventDetailsStatus.isSubmissionSuccess) {
                  context.showSnackbarMessage(S().eventEditedSuccessfully);
                }

                state.cancelEventStatus.isLoading()
                    ? context.loaderOverlay.show()
                    : context.loaderOverlay.hide();

                if (state.cancelEventStatus.isSuccess()) {
                  AutoRouter.of(context).popUntilRoot();
                  context.showSnackbarMessage(S().eventCanceledSuccessfully);
                }

                if (state.initialStatus.isFailure()) {
                  context.showSnackbarMessage(S().serverError);
                  AutoRouter.of(context).pop();
                }
              },
              builder: (context, state) {
                if (state.initialStatus.isLoading()) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return SingleChildScrollView(
                  child: Column(
                    children: [
                      BlocBuilder<UpcomingLiveEventCubit,
                          UpcomingLiveEventState>(
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
                      if (isMoreThanDayLeftToEvent) const PostponeEventButton(),
                      if (isMoreThanDayLeftToEvent) const CancelEventButton(),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

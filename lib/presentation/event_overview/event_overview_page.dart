import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/club_info/club_info_cubit.dart';
import 'package:raver_partners/application/event_notifier/event_notifier_cubit.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/core/event_revenue.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
import 'package:raver_partners/presentation/core/ticket_logo_animation.dart';
import 'package:raver_partners/presentation/event_overview/widgets/cancel_event_button.dart';
import 'package:raver_partners/presentation/event_overview/widgets/event_overview_details.dart';
import 'package:raver_partners/presentation/event_overview/widgets/event_overview_ticket_pools.dart';
import 'package:raver_partners/presentation/event_overview/widgets/postpone_event_button.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';
import 'package:formz/formz.dart';

class EventOverviewPage extends StatelessWidget {
  final BuildContext blocContext;
  final Event event;

  const EventOverviewPage({
    required this.blocContext,
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMoreThan3HoursLeftToEvent = event.eventStartDateTime.isAfter(
      DateTime.now().add(const Duration(hours: 3)),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<UpcomingLiveEventCubit>(
            param1: context.read<EventNotifierCubit>(),
          )
            ..getEventTickets(event)
            ..addEventToState(event),
        ),
        BlocProvider.value(
          value: blocContext.read<ClubInfoCubit>(),
        ),
      ],
      child: LoaderOverlay(
        overlayColor: context.shadowColor,
        overlayWidget: const TicketLogoAnimation(),
        useDefaultLoading: false,
        overlayOpacity: .7,
        child: Scaffold(
          appBar: RaverPartnersAppBar(title: S().eventOverview),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: BlocConsumer<UpcomingLiveEventCubit, UpcomingLiveEventState>(
              buildWhen: (previous, current) =>
                  previous.initialStatus != current.initialStatus ||
                  previous.ticketPoolStatus != current.ticketPoolStatus,
              listenWhen: (previous, current) =>
                  previous.snackbarMessage != current.snackbarMessage ||
                  previous.cancelEventStatus != current.cancelEventStatus ||
                  previous.editEventDetailsStatus !=
                      current.editEventDetailsStatus ||
                  previous.initialStatus != current.initialStatus,
              listener: (context, state) {
                state.snackbarMessage.fold(
                  () {},
                  (message) => context.showSnackbarMessage(message),
                );

                if (state.editEventDetailsStatus.isSubmissionSuccess) {
                  context.showSnackbarMessage(S().eventEditedSuccessfully);
                }

                state.cancelEventStatus.isLoading() ||
                        state.editEventDetailsStatus.isSubmissionInProgress
                    ? context.loaderOverlay.show()
                    : context.loaderOverlay.hide();

                if (state.cancelEventStatus.isSuccess()) {
                  context.router.popUntilRoot();
                  context.showSnackbarMessage(S().eventCanceledSuccessfully);
                }

                if (state.initialStatus.isFailure()) {
                  context.pushRoute(
                    FailureRoute(
                      retryCallback: () =>
                          context.read<UpcomingLiveEventCubit>()
                            ..getEventTickets(event)
                            ..addEventToState(event),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state.initialStatus.isInitial() ||
                    state.initialStatus.isFailure()) {
                  return Container();
                }

                if (state.initialStatus.isLoading()) {
                  return const TicketLogoAnimation();
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
                      const SizedBox(height: 20),
                      const EventOverviewTicketPools(),
                      const SizedBox(height: 10),
                      const EventOverviewDetails(),
                      if (isMoreThan3HoursLeftToEvent)
                        const PostponeEventButton(),
                      if (isMoreThan3HoursLeftToEvent)
                        const CancelEventButton(),
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

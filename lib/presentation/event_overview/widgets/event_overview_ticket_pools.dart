import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_partners/presentation/add_event/widgets/ticket_pools/event_ticket_pool_list_tile.dart';
import 'package:raver_partners/presentation/core/raver_partners_headline.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';
import 'package:raver_common/raver_common.dart';

class EventOverviewTicketPools extends StatelessWidget {
  const EventOverviewTicketPools({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    editTicketPool(TicketPool pool) async {
      final upcomingEventCubit = context.read<UpcomingLiveEventCubit>();

      final currentTicketPools =
          upcomingEventCubit.state.eventTickets.getOrCrash().ticketPools;

      final result = await context.pushRoute<TicketPool>(
        AddEditTicketPoolRoute(
          editingTicketPool: some(pool),
          currentTicketPools: currentTicketPools,
          blocContext: context,
        ),
      );

      if (result != null) {
        upcomingEventCubit.editTicketPool(result);
      }
    }

    deleteTicketPool(TicketPool pool) async {
      final upcomingEventCubit = context.read<UpcomingLiveEventCubit>();

      final result = await context.showDeleteConfirmationDialog();

      if (result ?? false) {
        upcomingEventCubit.deleteTicketPool(pool);
      }
    }

    return BlocBuilder<UpcomingLiveEventCubit, UpcomingLiveEventState>(
      buildWhen: (previous, current) =>
          previous.eventTickets != current.eventTickets ||
          previous.ticketPoolStatus != current.ticketPoolStatus,
      builder: (context, state) {
        final ticketPools = state.eventTickets.getOrCrash().ticketPools;

        return state.ticketPoolStatus.isLoading()
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaverPartnersHeadline(
                        text: S().tickets(2),
                        isSmallerVersion: true,
                      ),
                      IconButton(
                        onPressed: () async {
                          final result =
                              await AutoRouter.of(context).push<TicketPool>(
                            AddEditTicketPoolRoute(
                              editingTicketPool: none(),
                              currentTicketPools:
                                  state.eventTickets.getOrCrash().ticketPools,
                              blocContext: context,
                            ),
                          );

                          if (result != null) {
                            context
                                .read<UpcomingLiveEventCubit>()
                                .addTicketPool(result);
                          }
                        },
                        icon: const FaIcon(Icons.add),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  for (var pool in ticketPools)
                    EventTicketPoolListTile(
                      ticketPool: pool,
                      onTicketPoolEdited: editTicketPool,
                      onTicketPoolDeleted: deleteTicketPool,
                      isTheOnlyPool: ticketPools.length == 1,
                    ),
                ],
              );
      },
    );
  }
}

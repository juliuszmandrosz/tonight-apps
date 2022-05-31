import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/presentation/add_event/widgets/ticket_pools/event_ticket_pool_list_tile.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';

class EventTicketPoolList extends StatelessWidget {
  const EventTicketPoolList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    editTicketPool(TicketPool pool) async {
      final addEventCubit = context.read<AddEventCubit>();
      final currentTicketPools = addEventCubit.state.ticketPools;
      final result = await AutoRouter.of(context).push<TicketPool>(
        AddEditTicketPoolRoute(
          editingTicketPool: some(pool),
          currentTicketPools: currentTicketPools,
        ),
      );

      if (result != null) {
        addEventCubit.editTicketPool(pool, result);
      }
    }

    deleteTicketPool(TicketPool pool) async {
      final addEventCubit = context.read<AddEventCubit>();
      final result = await context.showDeleteConfirmationDialog();
      if (result ?? false) {
        addEventCubit.deleteTicketPool(pool);
      }
    }

    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.ticketPools != current.ticketPools,
      builder: (context, state) {
        return Column(
          children: [
            for (var pool in state.ticketPools)
              EventTicketPoolListTile(
                ticketPool: pool,
                onTicketPoolEdited: editTicketPool,
                onTicketPoolDeleted: deleteTicketPool,
              ),
          ],
        );
      },
    );
  }
}

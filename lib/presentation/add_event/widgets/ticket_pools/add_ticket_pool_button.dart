import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class AddTicketPoolButton extends StatelessWidget {
  const AddTicketPoolButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.ticketPools != current.ticketPools,
      builder: (context, state) {
        return SizedBox(
          width: 300,
          child: ElevatedButton(
            onPressed: () async {
              final result = await AutoRouter.of(context).push<TicketPool>(
                AddEditTicketPoolRoute(
                  editingTicketPool: none(),
                  currentTicketPools: state.ticketPools,
                ),
              );

              if (result != null) {
                context.read<AddEventCubit>().addTicketPool(result);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(S().addTicketPool),
            ),
          ),
        );
      },
    );
  }
}

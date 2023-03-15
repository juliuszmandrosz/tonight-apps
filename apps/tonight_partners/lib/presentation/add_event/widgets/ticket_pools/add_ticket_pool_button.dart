import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/presentation/routes/app_router.dart';
import 'package:translations/translations.dart';

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
        return ElevatedButton(
          onPressed: () async {
            if (state.ticketPools.length == 5) {
              context.showSnackbarMessage(S().maxNumberOfTicketPools);
              return;
            }

            final result = await AutoRouter.of(context).push<TicketPool>(
              AddEditTicketPoolRoute(
                editingTicketPool: none(),
                currentTicketPools: state.ticketPools,
                blocContext: context,
              ),
            );

            if (context.mounted && (result != null)) {
              context.read<AddEventCubit>().addTicketPool(result);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(S().addTicketPool),
          ),
        );
      },
    );
  }
}

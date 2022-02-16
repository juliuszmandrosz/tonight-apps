import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/tickets/ticket_overview/ticket_overview_cubit.dart';
import 'package:raver/injection.dart';

class TicketOverviewPage extends StatelessWidget {
  const TicketOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TicketOverviewCubit>()..getTickets(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: BlocBuilder<TicketOverviewCubit, TicketOverviewState>(
            builder: (ctx, state) => RefreshIndicator(
              onRefresh: () async =>
                  await ctx.read<TicketOverviewCubit>().getTickets(),
              child: state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadFailure: (failure) => Center(
                  child: Text(
                    failure.ticketOverviewFailure.toString(),
                  ),
                ),
                loadSuccess: (success) => ListView.builder(
                  itemCount: success.tickets.length,
                  itemBuilder: (ctx, i) =>
                      Text(success.tickets[i].eventDateTime),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

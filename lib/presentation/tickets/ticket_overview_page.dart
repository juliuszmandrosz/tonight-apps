import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/tickets/ticket_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/tickets/widgets/ticket_card.dart';

class TicketOverviewPage extends StatelessWidget {
  const TicketOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => getIt<TicketCubit>()..getTickets(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: BlocBuilder<TicketCubit, TicketState>(
            builder: (ctx, state) => state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                loadFailure: (failure) => Center(
                      child: Text(
                        failure.ticketFailure.toString(),
                      ),
                    ),
                loadSuccess: (state) {
                  final _expiredTickets = state.tickets
                      .where((ticket) => ticket.isExpired)
                      .toList();

                  final _upcomingTickets = state.tickets
                      .where((ticket) => !ticket.isExpired)
                      .toList();

                  return state.tickets.isEmpty
                      ? const Center(
                          child: Text('No tickets'),
                        )
                      : SingleChildScrollView(
                          child: Column(
                            children: [
                              // TODO - add translations
                              if (_upcomingTickets.isNotEmpty)
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 5),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      // TODO - translations
                                      'Upcoming',
                                      style: theme.textTheme.headline1,
                                    ),
                                  ),
                                ),
                              if (_upcomingTickets.isNotEmpty)
                                ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: _upcomingTickets.length,
                                  itemBuilder: (ctx, i) => TicketCard(
                                    ticket: _upcomingTickets[i],
                                  ),
                                ),
                              if (_expiredTickets.isNotEmpty)
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 15, 10, 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      // TODO - add translations
                                      'Past tickets',
                                      style: theme.textTheme.headline1,
                                    ),
                                  ),
                                ),
                              if (_expiredTickets.isNotEmpty)
                                ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: _expiredTickets.length,
                                  itemBuilder: (ctx, i) => TicketCard(
                                    ticket: _expiredTickets[i],
                                  ),
                                ),
                            ],
                          ),
                        );
                }),
          ),
        ),
      ),
    );
  }
}

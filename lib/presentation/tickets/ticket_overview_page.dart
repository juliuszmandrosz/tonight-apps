import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/core/cubit_status.dart';
import 'package:raver/application/tickets/ticket_cubit.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/tickets/widgets/ticket_card.dart';

class TicketOverviewPage extends StatelessWidget {
  const TicketOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: BlocBuilder<TicketCubit, TicketState>(builder: (ctx, state) {
          switch (state.status) {
            case CubitStatus.initial:
              return Container();

            case CubitStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );

            case CubitStatus.failure:
              return Center(
                child: Text(S().errorLoadingTickets),
              );

            case CubitStatus.success:
              final _expiredTickets =
                  state.tickets.where((ticket) => ticket.isExpired).toList();

              final _upcomingTickets =
                  state.tickets.where((ticket) => !ticket.isExpired).toList();

              return state.tickets.isEmpty
                  ? Center(
                      child: Text(S().tickets(0)),
                    )
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          if (_upcomingTickets.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: RaverHeadline(text: S().upcoming),
                              ),
                            ),
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
                                child: RaverHeadline(text: S().pastTickets),
                              ),
                            ),
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
          }
        }),
      ),
    );
  }
}

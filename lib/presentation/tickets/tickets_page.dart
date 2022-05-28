import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/tickets/widgets/ticket_card.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketsPage extends StatelessWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: BlocBuilder<TicketListCubit, TicketListState>(
            builder: (ctx, state) {
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
                  ? Center(child: Text(S().tickets(0)))
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          if (_upcomingTickets.isNotEmpty)
                            Align(
                              alignment: Alignment.centerLeft,
                              child: RaverHeadline(text: S().upcoming),
                            ),
                          const SizedBox(height: 20),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: _upcomingTickets.length,
                            itemBuilder: (ctx, i) => TicketCard(
                              ticket: _upcomingTickets[i],
                            ),
                          ),
                          if (_expiredTickets.isNotEmpty)
                            Align(
                              alignment: Alignment.centerLeft,
                              child: RaverHeadline(text: S().pastTickets),
                            ),
                          const SizedBox(height: 20),
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

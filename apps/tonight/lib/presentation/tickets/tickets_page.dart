import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/tickets/tickets_bloc.dart';
import 'package:tonight/presentation/tickets/widgets/ticket_card.dart';
import 'package:translations/translations.dart';

class TicketsPage extends HookWidget {
  const TicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<TicketsBloc>().add(const TicketsEvent.ticketsFetched());
      return null;
    }, const []);
    return BlocBuilder<TicketsBloc, TicketsState>(
      builder: (context, state) {
        switch (state.fetchTicketsStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();
          case CubitStatus.loading:
            return const WaveLoadingIndicator();
          case CubitStatus.failure:
            return FailureInfo(
              retryCallback: () => context
                  .read<TicketsBloc>()
                  .add(const TicketsEvent.ticketsFetched()),
            );
          case CubitStatus.success:
            return state.tickets.isEmpty
                ? Center(
                    child: Text(
                      S().tickets(0),
                      style: context.titleMedium,
                    ),
                  )
                : RefreshIndicator(
                    onRefresh: () async => context
                        .read<TicketsBloc>()
                        .add(const TicketsEvent.ticketsFetched()),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: InfiniteList(
                        hasError: state.nextPageStatus.isFailure(),
                        hasReachedMax: state.hasReachedMax,
                        isLoading: state.nextPageStatus.isLoading(),
                        itemCount: state.tickets.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 20),
                        onFetchData: () => context
                            .read<TicketsBloc>()
                            .add(const TicketsEvent.nextPageTicketsFetched()),
                        itemBuilder: (_, i) =>
                            TicketCard(ticket: state.tickets[i]),
                      ),
                    ),
                  );
        }
      },
    );
  }
}

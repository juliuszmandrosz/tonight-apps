import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/ticket_list/ticket_list_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/tickets/widgets/ticket_card.dart';
import 'package:translations/translations.dart';

class TicketsPage extends HookWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    useEffect(() {
      context.read<TicketListCubit>().fetchTickets();
      return null;
    }, const []);
    return BlocBuilder<TicketListCubit, TicketListState>(
      builder: (context, state) {
        switch (state.initialStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();

          case CubitStatus.loading:
            return const WaveLoadingIndicator();

          case CubitStatus.failure:
            return FailureInfo(
              retryCallback: context.read<TicketListCubit>().fetchTickets,
            );

          case CubitStatus.success:
            return state.upcomingLiveTickets.isEmpty &&
                    state.pastTickets.isEmpty
                ? Center(
                    child: Text(
                      S().tickets(0),
                      style: context.titleMedium,
                    ),
                  )
                : RefreshIndicator(
                    onRefresh: () async =>
                        context.read<TicketListCubit>().fetchTickets(),
                    child: NotificationListener<ScrollNotification>(
                      onNotification: (notification) {
                        if (notification.isAtEdge) {
                          context
                              .read<TicketListCubit>()
                              .fetchNextPagePastTickets();
                        }
                        return false;
                      },
                      child: ListView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        controller: scrollController,
                        children: [
                          if (state.upcomingLiveTickets.isNotEmpty)
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: TonightHeadline(
                                    text: S().upcomingAndLive,
                                    isSmallerVersion: true,
                                  ),
                                ),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: state.upcomingLiveTickets.length,
                            itemBuilder: (ctx, i) => TicketCard(
                              ticket: state.upcomingLiveTickets[i],
                            ),
                            separatorBuilder: (ctx, i) =>
                                const SizedBox(height: 20),
                          ),
                          if (state.upcomingLiveTickets.isNotEmpty)
                            const SizedBox(height: 30),
                          if (state.pastTickets.isNotEmpty)
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: TonightHeadline(
                                    text: S().pastTickets,
                                    isSmallerVersion: true,
                                  ),
                                ),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: state.hasReachedMax
                                ? state.pastTickets.length
                                : state.pastTickets.length + 1,
                            itemBuilder: (ctx, i) =>
                                i >= state.pastTickets.length
                                    ? const BottomLoader()
                                    : Center(
                                        child: TicketCard(
                                          ticket: state.pastTickets[i],
                                        ),
                                      ),
                            separatorBuilder: (ctx, i) =>
                                const SizedBox(height: 20),
                          ),
                        ],
                      ),
                    ),
                  );
        }
      },
    );
  }
}

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/ticket_list/ticket_list_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/tickets/widgets/ticket_card.dart';
import 'package:translations/translations.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 0.95;
  late final TicketListCubit _ticketListCubit;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    _ticketListCubit = context.read<TicketListCubit>();
  }

  @override
  Widget build(BuildContext context) {
    context.read<TicketListCubit>().fetchTickets();
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
                    child: ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      controller: _scrollController,
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
                          itemBuilder: (ctx, i) => i >= state.pastTickets.length
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
                  );
        }
      },
    );
  }

  void _onScroll() {
    if (_isBottom) {
      _ticketListCubit.fetchNextPagePastTickets();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * _scrollThreshold);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }
}

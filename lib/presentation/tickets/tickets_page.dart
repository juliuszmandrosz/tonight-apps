import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/tickets/widgets/ticket_card.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

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
              return state.upcomingLiveTickets.isEmpty &&
                      state.pastTickets.isEmpty
                  ? Center(child: Text(S().tickets(0)))
                  : RefreshIndicator(
                      onRefresh: () =>
                          context.read<TicketListCubit>().fetchTickets(),
                      child: ListView(
                        controller: _scrollController,
                        children: [
                          if (state.upcomingLiveTickets.isNotEmpty)
                            Align(
                              alignment: Alignment.centerLeft,
                              child: RaverHeadline(text: S().upcomingAndLive),
                            ),
                          const SizedBox(height: 20),
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
                          const SizedBox(height: 30),
                          if (state.pastTickets.isNotEmpty)
                            Align(
                              alignment: Alignment.centerLeft,
                              child: RaverHeadline(text: S().pastTickets),
                            ),
                          const SizedBox(height: 20),
                          ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: state.pastTickets.length,
                            itemBuilder: (ctx, i) => TicketCard(
                              ticket: state.pastTickets[i],
                            ),
                            separatorBuilder: (ctx, i) =>
                                const SizedBox(height: 20),
                          ),
                        ],
                      ),
                    );
          }
        }),
      ),
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

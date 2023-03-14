import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/ticket_list/ticket_list_cubit.dart';
import 'package:tonight/presentation/tickets/widgets/ticket_card.dart';
import 'package:translations/translations.dart';

class PastTickets extends StatefulWidget {
  const PastTickets({Key? key}) : super(key: key);

  @override
  State<PastTickets> createState() => _PastTicketsState();
}

class _PastTicketsState extends State<PastTickets> {
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
    return BlocBuilder<TicketListCubit, TicketListState>(
      builder: (context, state) {
        if (state.initialStatus.isLoading()) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state.initialStatus.isFailure()) {
          context.showSnackbarMessage(S().serverError);
          AutoRouter.of(context).pop();
        }

        return ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: state.pastTickets.length,
          itemBuilder: (ctx, i) => TicketCard(
            ticket: state.pastTickets[i],
          ),
          separatorBuilder: (ctx, i) => const SizedBox(height: 20),
        );
      },
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
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
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/past_event_details/past_event_details_cubit.dart';
import 'package:raver_partners/presentation/core/event_revenue.dart';
import 'package:raver_partners/presentation/core/ticket_logo_animation.dart';

import 'package:raver_partners/presentation/past_event_details/widgets/past_event_reviews.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';

class PastEventDetailsListView extends StatefulWidget {
  const PastEventDetailsListView({Key? key}) : super(key: key);

  @override
  State<PastEventDetailsListView> createState() =>
      _PastEventDetailsListViewState();
}

class _PastEventDetailsListViewState extends State<PastEventDetailsListView> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 0.95;
  late final PastEventDetailsCubit _pastEventDetailsCubit;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    _pastEventDetailsCubit = context.read<PastEventDetailsCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PastEventDetailsCubit, PastEventDetailsState>(
      listener: (context, state) {
        if (state.status.isFailure()) {
          context.pushRoute(
            FailureRoute(
              retryCallback: () =>
                  context.read<PastEventDetailsCubit>().initData(
                        state.event.getOrCrash(),
                      ),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state.status.isInitial() || state.status.isFailure()) {
          return Container();
        }

        if (state.status.isLoading()) {
          return const TicketLogoAnimation();
        }

        return ListView(
          controller: _scrollController,
          children: [
            EventRevenue(
              ticketSales: state.eventTickets.getOrCrash().ticketSales,
              eventReview: state.eventReview.getOrCrash(),
            ),
            const SizedBox(height: 30),
            const PastEventReviews()
          ],
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
      _pastEventDetailsCubit.fetchNextPageReviews();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * _scrollThreshold);
  }
}

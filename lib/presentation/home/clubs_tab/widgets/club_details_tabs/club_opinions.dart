import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_details/club_reviews/club_reviews_bloc.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_reviews/club_review_card.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class ClubOpinions extends StatefulWidget {
  final String clubId;

  const ClubOpinions({
    Key? key,
    required this.clubId,
  }) : super(key: key);

  @override
  State<ClubOpinions> createState() => _ClubOpinionsState();
}

class _ClubOpinionsState extends State<ClubOpinions> {
  final _scrollController = ScrollController();
  late final ClubReviewsBloc _clubReviewsBloc;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _clubReviewsBloc = context.read<ClubReviewsBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubReviewsBloc, ClubReviewsState>(
      builder: (context, state) {
        switch (state.status) {
          case CubitStatus.initial:
            return Container();
          case CubitStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case CubitStatus.failure:
            return Center(
              child: Text(S().clubReviewsLoadingError),
            );
          case CubitStatus.success:
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: state.hasReachedMax
                            ? state.reviews.length
                            : state.reviews.length + 1,
                        itemBuilder: (context, index) {
                          return index >= state.reviews.length
                              ? const BottomLoader()
                              : ClubReviewCard(review: state.reviews[index]);
                        },
                        controller: _scrollController,
                        separatorBuilder: (_, __) => const SizedBox(
                              height: 10,
                            )),
                  ),
                ],
              ),
            );
        }
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
      _clubReviewsBloc.add(const ClubReviewsEvent.nextPageReviewsFetched());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.95);
  }
}

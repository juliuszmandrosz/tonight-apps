import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_details/club_reviews/club_reviews_bloc.dart';
import 'package:raver/presentation/club_details/widgets/club_reviews/club_review_list_tile.dart';
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
    return BlocConsumer<ClubReviewsBloc, ClubReviewsState>(
      listenWhen: (previous, current) =>
          previous.errorMessage != current.errorMessage ||
          previous.reviewReportStatus != current.reviewReportStatus,
      listener: (context, state) {
        state.errorMessage.fold(
          () {},
          (error) => context.showSnackbarMessage(error),
        );

        if (state.reviewReportStatus.isSuccess()) {
          context.showSnackbarMessage(S().reviewReportedSuccessfully);
        }
      },
      builder: (context, state) {
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
                return state.reviews.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              S().noOpinions,
                              style: context.subtitle1,
                            ),
                            const SizedBox(height: 20),
                            OutlinedButton(
                              onPressed: () =>
                                  context.read<ClubReviewsBloc>().add(
                                        ClubReviewsEvent.reviewsFetched(
                                            widget.clubId),
                                      ),
                              child: Text(S().refresh),
                            ),
                          ],
                        ),
                      )
                    : Expanded(
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder: (context, i) => const Divider(),
                          itemCount: state.reviews.length + 1,
                          itemBuilder: (ctx, i) => i >= state.reviews.length
                              ? const SizedBox()
                              : ClubReviewListTile(review: state.reviews[i]),
                        ),
                      );
            }
          },
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

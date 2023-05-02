import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/clubs/club_details/club_reviews/club_reviews_bloc.dart';
import 'package:tonight/presentation/club_details/widgets/club_reviews/club_review_list_tile.dart';
import 'package:translations/translations.dart';

class ClubReviews extends StatelessWidget {
  final String clubId;

  const ClubReviews({
    Key? key,
    required this.clubId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClubReviewsBloc, ClubReviewsState>(
      listenWhen: (previous, current) =>
          previous.getReviewsStatus != current.getReviewsStatus ||
          previous.snackbarMessage != current.snackbarMessage ||
          previous.reviewReportStatus != current.reviewReportStatus,
      listener: (context, state) {
        state.snackbarMessage.fold(
          () {},
          (error) => context.showSnackbarMessage(error),
        );
      },
      builder: (context, state) {
        switch (state.getReviewsStatus) {
          case CubitStatus.initial:
            return Container();
          case CubitStatus.loading:
            return const WaveLoadingIndicator();
          case CubitStatus.failure:
            return FailureInfo(
              retryCallback: () => context.read<ClubReviewsBloc>().add(
                    ClubReviewsEvent.reviewsFetched(state.clubId),
                  ),
            );
          case CubitStatus.success:
            return state.reviews.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S().noOpinions,
                          style: context.titleMedium,
                        ),
                        const SizedBox(height: 20),
                        OutlinedButton(
                          onPressed: () => _refreshOpinions(context),
                          child: Text(S().refresh),
                        ),
                      ],
                    ),
                  )
                : RefreshIndicator(
                    onRefresh: () async => _refreshOpinions(context),
                    child: InfiniteList(
                      itemBuilder: (context, i) => ClubReviewListTile(
                        review: state.reviews[i],
                      ),
                      itemCount: state.reviews.length,
                      hasReachedMax: state.hasReachedMax,
                      onFetchData: () => context
                          .read<ClubReviewsBloc>()
                          .add(const ClubReviewsEvent.nextPageReviewsFetched()),
                      hasError: state.nextPageReviewsStatus.isFailure(),
                      isLoading: state.nextPageReviewsStatus.isLoading(),
                      separatorBuilder: (context, i) => const Divider(
                        height: 20,
                        thickness: 1,
                      ),
                    ),
                  );
        }
      },
    );
  }

  _refreshOpinions(BuildContext context) {
    context.read<ClubReviewsBloc>().add(
          ClubReviewsEvent.reviewsFetched(clubId),
        );
  }
}

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/collective_details/collective_details_bloc.dart';
import 'package:tonight/presentation/collective_details/collective_details_tabs/reviews/collective_review_list_tile.dart';
import 'package:translations/translations.dart';

class CollectiveReviews extends HookWidget {
  final String collectiveId;

  const CollectiveReviews({
    super.key,
    required this.collectiveId,
  });

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      _refreshReviews(context);
      return null;
    }, const []);

    return BlocConsumer<CollectiveDetailsBloc, CollectiveDetailsState>(
      listenWhen: (previous, current) =>
          previous.getReviewsStatus != current.getReviewsStatus ||
          previous.snackbarMessage != current.snackbarMessage,
      listener: (context, state) {
        state.snackbarMessage.fold(
          () {},
          (error) => context.showSnackbarMessage(error),
        );
      },
      builder: (context, state) {
        switch (state.getReviewsStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();
          case CubitStatus.loading:
            return const WaveLoadingIndicator();
          case CubitStatus.failure:
            return FailureInfo(retryCallback: () => _refreshReviews(context));
          case CubitStatus.success:
            return state.reviews.isEmpty
                ? NoResults(
                    message: S().opinions(0),
                    onRefresh: () => _refreshReviews(context),
                  )
                : RefreshIndicator(
                    onRefresh: () async => _refreshReviews(context),
                    child: InfiniteList(
                      itemBuilder: (context, i) => CollectiveReviewListTile(
                        review: state.reviews[i],
                      ),
                      itemCount: state.reviews.length,
                      hasReachedMax: state.hasReviewsReachedMax,
                      onFetchData: () => context
                          .read<CollectiveDetailsBloc>()
                          .add(CollectiveDetailsEvent.nextPageReviewsFetched(
                              collectiveId)),
                      hasError: state.getNextPageReviewsStatus.isFailure(),
                      isLoading: state.getNextPageReviewsStatus.isLoading(),
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

  _refreshReviews(BuildContext context) {
    context
        .read<CollectiveDetailsBloc>()
        .add(CollectiveDetailsEvent.reviewsFetched(collectiveId));
  }
}

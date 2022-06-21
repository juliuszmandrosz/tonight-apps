import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:raver/application/clubs/club_details/club_reviews/club_reviews_bloc.dart';
import 'package:raver/presentation/club_details/widgets/club_reviews/club_review_list_tile.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class ClubOpinions extends StatelessWidget {
  final String clubId;

  const ClubOpinions({
    Key? key,
    required this.clubId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClubReviewsBloc, ClubReviewsState>(
      listenWhen: (previous, current) =>
          previous.status != current.status ||
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

        if (state.status.isFailure()) {
          context.pushRoute(
            FailureRoute(
              retryCallback: () => context.read<ClubReviewsBloc>().add(
                    ClubReviewsEvent.reviewsFetched(state.clubId),
                  ),
            ),
          );
        }
      },
      builder: (context, state) {
        return BlocBuilder<ClubReviewsBloc, ClubReviewsState>(
          builder: (context, state) {
            switch (state.status) {
              case CubitStatus.initial:
                return Container();
              case CubitStatus.loading:
                return Center(
                  child: SpinKitThreeBounce(
                    size: 24,
                    color: context.onSurfaceColor,
                  ),
                );
              case CubitStatus.failure:
                return Container();
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
                              onPressed: () => _refreshOpinions(context),
                              child: Text(S().refresh),
                            ),
                          ],
                        ),
                      )
                    : RefreshIndicator(
                        onRefresh: () async => _refreshOpinions(context),
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

  _refreshOpinions(BuildContext context) {
    context.read<ClubReviewsBloc>().add(
          ClubReviewsEvent.reviewsFetched(clubId),
        );
  }
}

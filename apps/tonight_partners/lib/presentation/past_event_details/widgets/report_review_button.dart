import 'package:auto_size_text/auto_size_text.dart';
import 'package:clubs/domain/reviews/entities/review_entity.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tonight_partners/application/past_event_details/past_event_details_cubit.dart';
import 'package:translations/raver_translations.dart';

class ReportReviewButton extends StatelessWidget {
  final Review review;

  const ReportReviewButton({required this.review, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PastEventDetailsCubit, PastEventDetailsState>(
      buildWhen: (previous, current) =>
          previous.reviewReportStatus != current.reviewReportStatus,
      builder: (context, state) {
        final isReviewReporting = state.reviewReportStatus.isLoading() &&
            state.reportingReviewId.getOrCrash() == review.id;
        return Stack(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return SizedBox(
                  width: constraints.maxWidth * 0.25,
                  child: OutlinedButton(
                    onPressed: () async {
                      final result =
                          await context.showConfirmationDialogWithCustomMessage(
                        S().confirmReviewReport,
                      );

                      if (context.mounted && (result ?? false)) {
                        context
                            .read<PastEventDetailsCubit>()
                            .reportReview(review.id);
                      }
                    },
                    child: isReviewReporting
                        ? const SizedBox()
                        : Center(
                            child: AutoSizeText(
                              S().report,
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                              softWrap: false,
                            ),
                          ),
                  ),
                );
              },
            ),
            if (isReviewReporting)
              Positioned.fill(
                child: SpinKitThreeBounce(
                  size: 18,
                  color: context.onSurfaceColor,
                ),
              )
          ],
        );
      },
    );
  }
}

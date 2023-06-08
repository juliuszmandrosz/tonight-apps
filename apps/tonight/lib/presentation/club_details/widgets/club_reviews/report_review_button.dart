import 'package:auto_size_text/auto_size_text.dart';
import 'package:clubs/clubs.dart';
import 'package:common/common.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tonight/application/clubs/club_details/club_reviews/club_reviews_bloc.dart';
import 'package:translations/translations.dart';

class ReportReviewButton extends StatelessWidget {
  final Review review;

  const ReportReviewButton({required this.review, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubReviewsBloc, ClubReviewsState>(
      buildWhen: (p, c) =>
          !listEquals(p.reportingReviewIds, c.reportingReviewIds),
      builder: (context, state) {
        final isReviewReporting = state.reportingReviewIds.contains(review.id);
        return Stack(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return SizedBox(
                  width: constraints.maxWidth * 0.25,
                  height: constraints.maxWidth * 0.1,
                  child: OutlinedButton(
                    onPressed: () async {
                      final result =
                          await context.showConfirmationDialogWithCustomMessage(
                        S().confirmReviewReport,
                      );

                      if (context.mounted && (result ?? false)) {
                        context
                            .read<ClubReviewsBloc>()
                            .add(ClubReviewsEvent.reviewReported(review));
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
                  size: 16,
                  color: context.onSurfaceColor,
                ),
              )
          ],
        );
      },
    );
  }
}

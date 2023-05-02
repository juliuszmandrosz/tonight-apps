import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/event_review/event_review_cubit.dart';
import 'package:translations/raver_translations.dart';

class ReviewSubmitButton extends StatelessWidget {
  const ReviewSubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventReviewCubit, EventReviewState>(
      buildWhen: (previous, current) =>
          previous.submittingStatus != current.submittingStatus,
      builder: (context, state) {
        return SizedBox(
          width: 300,
          child: ElevatedButton(
            onPressed: () => context.read<EventReviewCubit>().submitReview(),
            child: state.submittingStatus.isSubmissionInProgress
                ? SpinKitThreeBounce(
                    color: context.onSurfaceColor,
                    size: 16,
                  )
                : Text(S().rateButtonTitle),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/event_review/new_review/event_review_cubit.dart';
import 'package:raver/application/event_review/new_review/form_inputs/review_content_input.dart';
import 'package:raver_translations/raver_translations.dart';

class ReviewTextInput extends StatelessWidget {
  const ReviewTextInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewReviewCubit, EventReviewState>(
      buildWhen: (previous, current) =>
          previous.reviewContent != current.reviewContent ||
          previous.submittingStatus != current.submittingStatus,
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: TextField(
                  maxLines: 4,
                  keyboardType: TextInputType.multiline,
                  onChanged: (value) => context
                      .read<NewReviewCubit>()
                      .reviewContentChanged(value),
                  decoration: InputDecoration(
                    labelText: S().reviewContent,
                    errorText: _getReviewContentInputErrorMessage(state),
                  )),
            )
          ],
        );
      },
    );
  }

  String? _getReviewContentInputErrorMessage(EventReviewState state) {
    if (state.reviewContent.valid ||
        state.submittingStatus != FormzStatus.invalid) {
      return null;
    }

    return reviewContentInputErrorMessages[state.reviewContent.error];
  }
}

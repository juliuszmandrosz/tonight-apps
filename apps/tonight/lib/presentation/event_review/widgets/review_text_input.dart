import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/event_review/event_review_cubit.dart';
import 'package:tonight/application/event_review/form_inputs/review_content_input.dart';
import 'package:translations/raver_translations.dart';

class ReviewTextInput extends StatelessWidget {
  const ReviewTextInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventReviewCubit, EventReviewState>(
      buildWhen: (previous, current) =>
          previous.reviewContent != current.reviewContent ||
          previous.submittingStatus != current.submittingStatus,
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                onChanged: (value) => context
                    .read<EventReviewCubit>()
                    .reviewContentChanged(value),
                decoration: InputDecoration(
                  labelText: S().reviewContent,
                  errorText: _getReviewContentInputErrorMessage(state),
                  errorMaxLines: 2,
                ),
              ),
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

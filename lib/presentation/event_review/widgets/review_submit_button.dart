import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/event_review/new_review/event_review_cubit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

class ReviewSubmitButton extends StatelessWidget {
  final Ticket ticket;

  const ReviewSubmitButton({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewReviewCubit, EventReviewState>(
      buildWhen: (previous, current) =>
          previous.submittingStatus != current.submittingStatus,
      builder: (context, state) {
        return state.submittingStatus == CubitStatus.loading
            ? const CircularProgressIndicator()
            : TextButton(
                onPressed: () =>
                    context.read<NewReviewCubit>().submitReview(ticket),
                child: Text(S().rateButtonTitle));
      },
    );
  }
}

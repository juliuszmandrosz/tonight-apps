import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/event_review/existing_review/existing_review_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/event_review/widgets/read_only_rating_indicator.dart';
import 'package:raver/presentation/event_review/widgets/read_only_review_content.dart';
import 'package:raver/presentation/event_review/widgets/review_club_name.dart';
import 'package:raver/presentation/event_review/widgets/review_event_date.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

class ExistingReviewForm extends StatelessWidget {
  final Ticket ticket;

  const ExistingReviewForm({
    Key? key,
    required this.ticket,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: BlocProvider(
        create: (context) => getIt<ExistingReviewCubit>()
          ..getReview(ticket.reviewId, ticket.clubId),
        child: BlocBuilder<ExistingReviewCubit, ExistingReviewState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              loadFailure: (_) => Center(
                child: Text(S().reviewLoadError),
              ),
              loadSuccess: (review) {
                return Column(
                  children: [
                    ReviewClubName(ticket: ticket),
                    const SizedBox(height: 10),
                    ReviewEventDate(ticket: ticket),
                    const SizedBox(height: 20),
                    ReadOnlyRatingIndicator(value: review.review.userRate),
                    const SizedBox(height: 10),
                    ReadOnlyReviewContent(content: review.review.userOpinion),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

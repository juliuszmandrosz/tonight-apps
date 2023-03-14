import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tickets/tickets.dart';
import 'package:tonight/application/event_review/existing_review/existing_review_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/ticket_logo_animation.dart';
import 'package:tonight/presentation/event_review/widgets/read_only_rating_indicator.dart';
import 'package:tonight/presentation/event_review/widgets/read_only_review_content.dart';
import 'package:tonight/presentation/event_review/widgets/review_event_date.dart';
import 'package:tonight/presentation/event_review/widgets/review_event_name.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class ExistingReviewForm extends StatelessWidget {
  final Ticket ticket;

  const ExistingReviewForm({
    Key? key,
    required this.ticket,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: BlocProvider(
        create: (context) => getIt<ExistingReviewCubit>()
          ..getReview(ticket.reviewId, ticket.clubId),
        child: BlocConsumer<ExistingReviewCubit, ExistingReviewState>(
          listener: (context, state) {
            if (state.maybeWhen(
                orElse: () => false, loadFailure: (_) => true)) {
              context.pushRoute(
                FailureRoute(
                  retryCallback: () => context
                      .read<ExistingReviewCubit>()
                      .getReview(ticket.reviewId, ticket.clubId),
                ),
              );
            }
          },
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const TicketLogoAnimation(),
              loadFailure: (_) => Center(
                child: Text(S().reviewLoadError),
              ),
              loadSuccess: (review) {
                return Column(
                  children: [
                    ReviewEventName(ticket: ticket),
                    const SizedBox(height: 30),
                    ReviewEventDate(ticket: ticket),
                    const SizedBox(height: 30),
                    ReadOnlyRatingIndicator(review: review.review),
                    const SizedBox(height: 40),
                    if (review.review.userOpinion.isNotEmpty)
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

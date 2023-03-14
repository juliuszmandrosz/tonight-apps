import 'package:flutter/material.dart';
import 'package:tickets/tickets.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/event_review/widgets/existing_review_form.dart';
import 'package:tonight/presentation/event_review/widgets/new_review_form.dart';
import 'package:translations/translations.dart';

class ReviewPage extends StatelessWidget {
  final BuildContext blocContext;
  final Ticket ticket;

  const ReviewPage({
    required this.blocContext,
    required this.ticket,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TonightAppBar(
        title: S().eventDetails,
      ),
      body: ticket.reviewId.isEmpty
          ? NewReviewForm(
              ticket: ticket,
              blocContext: blocContext,
            )
          : ExistingReviewForm(ticket: ticket),
    );
  }
}

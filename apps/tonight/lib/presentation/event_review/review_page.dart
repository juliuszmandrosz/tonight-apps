import 'package:flutter/material.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/event_review/widgets/existing_review_form.dart';
import 'package:raver/presentation/event_review/widgets/new_review_form.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

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
      appBar: RaverAppBar(
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

import 'package:flutter/material.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/event_review/widgets/existing_review_form.dart';
import 'package:raver/presentation/event_review/widgets/new_review_form.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

class ReviewPage extends StatelessWidget {
  final Ticket ticket;

  const ReviewPage({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RaverAppBar(
        title: S().eventDetails,
      ),
      body: ticket.reviewId.isEmpty
          ? NewReviewForm(ticket: ticket)
          : ExistingReviewForm(ticket: ticket),
    );
  }
}

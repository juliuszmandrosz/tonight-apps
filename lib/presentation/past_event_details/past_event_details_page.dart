import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/past_event_details/past_event_details_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/core/event_revenue.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
import 'package:raver_partners/presentation/past_event_details/widgets/past_event_reviews.dart';
import 'package:raver_translations/raver_translations.dart';

class PastEventDetailsPage extends StatelessWidget {
  final Event event;

  const PastEventDetailsPage({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PastEventDetailsCubit>()..initData(event),
      child: Scaffold(
        appBar: RaverPartnersAppBar(title: S().eventOverview),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: BlocBuilder<PastEventDetailsCubit, PastEventDetailsState>(
            builder: (context, state) {
              if (state.status.isLoading()) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (state.status.isFailure()) {
                context.showSnackbarMessage(S().serverError);
                AutoRouter.of(context).pop();
              }

              return ListView(
                children: [
                  EventRevenue(
                    ticketSales: state.eventTickets.getOrCrash().ticketSales,
                    eventReview: state.eventReview.getOrCrash(),
                  ),
                  const SizedBox(height: 30),
                  const PastEventReviews()
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

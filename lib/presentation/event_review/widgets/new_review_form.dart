import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/event_review/new_review/event_review_cubit.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/event_review/widgets/review_club_name.dart';
import 'package:raver/presentation/event_review/widgets/review_event_date.dart';
import 'package:raver/presentation/event_review/widgets/review_rating_bar.dart';
import 'package:raver/presentation/event_review/widgets/review_submit_button.dart';
import 'package:raver/presentation/event_review/widgets/review_text_input.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

class NewReviewForm extends StatelessWidget {
  final Ticket ticket;
  var isUserAcceptedLeavingPage = false;

  NewReviewForm({
    Key? key,
    required this.ticket,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (isUserAcceptedLeavingPage) {
          return true;
        }

        final result = await context
            .showConfirmationDialogWithCustomMessage(S().confirmLeavingPage);

        return result ?? false;
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: BlocProvider(
          create: (context) => getIt<NewReviewCubit>(
            param1: context.read<TicketListCubit>(),
          )..loadForm(),
          child: BlocConsumer<NewReviewCubit, EventReviewState>(
            listenWhen: (previous, current) =>
                previous.submittingStatus != current.submittingStatus ||
                previous.errorMessage != current.errorMessage,
            listener: (context, state) {
              state.errorMessage.fold(
                () {},
                (error) => context.showSnackbarMessage(error),
              );
              if (state.submittingStatus.isSubmissionSuccess) {
                context.showSnackbarMessage(S().reviewAdded);
                AutoRouter.of(context).pop();
              }
            },
            builder: (context, state) {
              switch (state.status) {
                case CubitStatus.initial:
                  return Container();
                case CubitStatus.loading:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case CubitStatus.failure:
                  return Center(
                    child: Text(S().reviewLoadingFormFailure),
                  );
                case CubitStatus.success:
                  return Column(
                    children: [
                      ReviewClubName(ticket: ticket),
                      const SizedBox(height: 10),
                      ReviewEventDate(ticket: ticket),
                      const SizedBox(height: 20),
                      const ReviewRatingBar(),
                      const SizedBox(height: 10),
                      const ReviewTextInput(),
                      const SizedBox(height: 10),
                      ReviewSubmitButton(ticket: ticket),
                    ],
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}

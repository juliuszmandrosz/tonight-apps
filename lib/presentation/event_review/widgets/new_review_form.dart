import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/event_review/new_review/event_review_cubit.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/event_review/widgets/review_event_date.dart';
import 'package:raver/presentation/event_review/widgets/review_event_name.dart';
import 'package:raver/presentation/event_review/widgets/review_rating_bar.dart';
import 'package:raver/presentation/event_review/widgets/review_submit_button.dart';
import 'package:raver/presentation/event_review/widgets/review_text_input.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

class NewReviewForm extends StatelessWidget {
  final Ticket ticket;

  const NewReviewForm({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _isReviewAddedSuccessfully = false;

    return WillPopScope(
      onWillPop: () async {
        if (_isReviewAddedSuccessfully) {
          return true;
        }

        final result = await context
            .showConfirmationDialogWithCustomMessage(S().confirmLeavingPage);

        return result ?? false;
      },
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: BlocProvider(
          create: (context) => getIt<NewReviewCubit>(
            param1: context.read<TicketListCubit>(),
          )..loadForm(),
          child: BlocConsumer<NewReviewCubit, EventReviewState>(
            listenWhen: (previous, current) =>
                previous.status != current.status ||
                previous.submittingStatus != current.submittingStatus ||
                previous.errorMessage != current.errorMessage,
            listener: (context, state) {
              if (state.status.isFailure()) {
                context.popRoute(
                  FailureRoute(
                    retryCallback: () =>
                        context.read<NewReviewCubit>().loadForm(),
                  ),
                );
              }
              state.errorMessage.fold(
                () {},
                (error) => context.showSnackbarMessage(error),
              );
              if (state.submittingStatus.isSubmissionSuccess) {
                _isReviewAddedSuccessfully = true;
                context.showSnackbarMessage(S().reviewAdded);
                context.popRoute();
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
                  return Container();
                case CubitStatus.success:
                  return Column(
                    children: [
                      Expanded(
                        child: ListView(
                          children: [
                            Center(child: ReviewEventName(ticket: ticket)),
                            const SizedBox(height: 30),
                            Center(child: ReviewEventDate(ticket: ticket)),
                            const SizedBox(height: 30),
                            const ReviewRatingBar(),
                            const SizedBox(height: 30),
                            const ReviewTextInput(),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
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

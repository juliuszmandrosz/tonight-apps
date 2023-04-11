import 'package:auto_route/auto_route.dart';
import 'package:common/application/cubit_status.dart';
import 'package:common/extensions/extensions.dart';
import 'package:common/presentation/ticket_logo_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/event_review/event_review_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/event_review/widgets/existing_review_form.dart';
import 'package:tonight/presentation/event_review/widgets/new_review_form.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class ReviewPage extends StatelessWidget {
  final String eventId;

  const ReviewPage({
    required this.eventId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isReviewAddedSuccessfully = false;
    return BlocProvider(
      create: (context) =>
          getIt<EventReviewCubit>()..getEventReviewForm(eventId),
      child: BlocConsumer<EventReviewCubit, EventReviewState>(
        listenWhen: (previous, current) =>
            previous.status != current.status ||
            previous.submittingStatus != current.submittingStatus ||
            previous.errorMessage != current.errorMessage,
        listener: (context, state) {
          if (state.status.isFailure()) {
            context.popRoute(
              FailureRoute(
                retryCallback: () => context
                    .read<EventReviewCubit>()
                    .getEventReviewForm(eventId),
              ),
            );
          }
          state.errorMessage.fold(
            () {},
            (error) => context.showSnackbarMessage(error),
          );

          if (state.submittingStatus.isSubmissionSuccess) {
            isReviewAddedSuccessfully = true;
            context.showSnackbarMessage(S().reviewAdded);
            context.popRoute();
          }
        },
        builder: (context, state) {
          switch (state.status) {
            case CubitStatus.initial:
              return Container();
            case CubitStatus.loading:
              return const TicketLogoAnimation();
            case CubitStatus.failure:
              return Container();
            case CubitStatus.success:
              final eventReviewForm = state.eventReviewForm.getOrCrash();
              return Scaffold(
                appBar: TonightAppBar(
                  title: S().eventDetails,
                ),
                body: eventReviewForm.reviewValue != null
                    ? ExistingReviewForm(eventReviewForm: eventReviewForm)
                    : WillPopScope(
                        onWillPop: () async {
                          context.unfocus();
                          if (isReviewAddedSuccessfully) {
                            return true;
                          }
                          final result = await context
                              .showConfirmationDialogWithCustomMessage(
                            S().confirmLeavingPage,
                          );
                          return result ?? false;
                        },
                        child: NewReviewForm(eventReviewForm: eventReviewForm),
                      ),
              );
          }
        },
      ),
    );
  }
}

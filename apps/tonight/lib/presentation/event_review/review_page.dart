import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/event_review/event_review_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/event_review/widgets/existing_review_form.dart';
import 'package:tonight/presentation/event_review/widgets/new_review_form.dart';
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
          state.errorMessage.fold(
            () {},
            (error) => context.showSnackbarMessage(error),
          );
          if (state.submittingStatus.isSubmissionSuccess) {
            isReviewAddedSuccessfully = true;
            // TODO - add translation
            context.showSnackbarMessage('Opinia dodana, dziękujemy!');
            context.popRoute();
          }
        },
        builder: (context, state) {
          switch (state.status) {
            case CubitStatus.initial:
              return Container();
            case CubitStatus.loading:
              return const WaveLoadingIndicator();
            case CubitStatus.failure:
              return FailureInfo(
                retryCallback: () => context
                    .read<EventReviewCubit>()
                    .getEventReviewForm(eventId),
              );
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

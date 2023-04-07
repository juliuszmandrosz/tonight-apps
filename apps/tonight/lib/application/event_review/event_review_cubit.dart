import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/event_review/form_inputs/review_content_input.dart';
import 'package:tonight/domain/event_review/event_review_aggregator.dart';
import 'package:tonight/domain/event_review/event_review_form_failure.dart';
import 'package:tonight/domain/event_review/event_review_form_model.dart';
import 'package:translations/translations.dart';

part 'event_review_cubit.freezed.dart';
part 'event_review_state.dart';

class EventReviewCubit extends Cubit<EventReviewState> {
  final EventReviewAggregator _eventReviewAggregator;

  EventReviewCubit(this._eventReviewAggregator)
      : super(EventReviewState.initial());

  getEventReviewForm(String eventId) async {
    emit(state.copyWith(status: CubitStatus.loading));
    final result = await _eventReviewAggregator.getEventReviewForm(eventId);
    result.fold(
      _emitFailure,
      (model) => emit(state.copyWith(eventReviewForm: some(model))),
    );
  }

  void reviewValueChanged(double value) {
    emit(state.copyWith(reviewValue: value));
  }

  void reviewContentChanged(String value) {
    emit(
      state.copyWith(
        reviewContent: ReviewContentInput.dirty(value),
        errorMessage: none(),
      ),
    );
  }

  void submitReview() async {
    if (state.reviewValue == 0) {
      _showErrorMessage(S().selectNumberOfStars);
      return;
    }
    if (!_validateForm()) return;
    emit(state.copyWith(submittingStatus: FormzStatus.submissionInProgress));
    final result = await _eventReviewAggregator.submitReview(
      state.eventReviewForm.getOrCrash(),
    );
    result.fold(
      (failure) => _emitSubmitReviewFailure(),
      (reviewId) {
        emit(state.copyWith(submittingStatus: FormzStatus.submissionSuccess));
      },
    );
  }

  _emitFailure(EventReviewFormFailure failure) {
    emit(state.copyWith(status: CubitStatus.failure));
    _showErrorMessage(failure.message);
  }

  _showErrorMessage(String errorMessage) {
    emit(state.copyWith(errorMessage: some(errorMessage)));
    emit(state.copyWith(errorMessage: none()));
  }

  _emitSubmitReviewFailure() {
    emit(
      state.copyWith(
        submittingStatus: FormzStatus.submissionFailure,
        errorMessage: some(S().rateAddingError),
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }

  _validateForm() {
    emit(
      state.copyWith(
        reviewContent: ReviewContentInput.dirty(state.reviewContent.value),
      ),
    );

    final status = Formz.validate([
      state.reviewContent,
    ]);
    emit(state.copyWith(submittingStatus: status));

    return status.isValidated;
  }
}

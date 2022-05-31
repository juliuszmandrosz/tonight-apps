import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/event_review/new_review/form_inputs/review_content_input.dart';
import 'package:raver/application/profile/profile_cubit_hub.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/application/application.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

part 'event_review_cubit.freezed.dart';
part 'event_review_state.dart';

class NewReviewCubit extends Cubit<EventReviewState> {
  final UserReviewFacade _reviewFacade;
  final TicketListCubit _ticketListCubit;
  final ProfileBroadcastSubject _profileBroadcastSubject;

  NewReviewCubit({
    required UserReviewFacade reviewFacade,
    required ProfileBroadcastSubject profileBroadcastSubject,
    required TicketListCubit ticketListCubit,
  })  : _reviewFacade = reviewFacade,
        _ticketListCubit = ticketListCubit,
        _profileBroadcastSubject = profileBroadcastSubject,
        super(EventReviewState.initial());

  loadForm() async {
    emit(state.copyWith(status: CubitStatus.loading));
    final userProfile = await _profileBroadcastSubject.getSubject().first;
    if (userProfile.status == CubitStatus.success) {
      emit(
        state.copyWith(
          status: CubitStatus.success,
          username: userProfile.user.username,
          userId: userProfile.user.id,
        ),
      );
      return;
    }
    _emitFetchFailure();
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

  void submitReview(Ticket ticket) async {
    if (state.reviewValue == 0) {
      // TODO - add translation
      _showErrorMessage('Nalezy wybrac ilosc gwiazdek');
      return;
    }

    if (!_validateForm()) return;
    emit(state.copyWith(submittingStatus: FormzStatus.submissionInProgress));
    final review = Review(
      userRate: state.reviewValue,
      userOpinion: state.reviewContent.value,
      username: state.username,
      userId: state.userId,
      dateAdded: DateTime.now(),
      eventId: ticket.eventId,
      eventName: ticket.eventName,
    );

    final failureOrSuccess = await _reviewFacade.submitReview(
      clubId: ticket.clubId,
      ticketId: ticket.id,
      review: review,
    );

    failureOrSuccess.fold(
      (failure) => _emitSubmitReviewFailure(),
      (reviewId) {
        _ticketListCubit.updatePastTicketInState(
          ticket,
          ticket.copyWith(reviewId: reviewId),
        );
        emit(
          state.copyWith(submittingStatus: FormzStatus.submissionSuccess),
        );
      },
    );
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

  void _emitFetchFailure() {
    emit(state.copyWith(status: CubitStatus.failure));
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

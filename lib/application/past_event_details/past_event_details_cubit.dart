import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_clubs/domain/domain.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';

part 'past_event_details_cubit.freezed.dart';

part 'past_event_details_state.dart';

class PastEventDetailsCubit extends Cubit<PastEventDetailsState> {
  final pageSize = 5;

  final PartnerEventTicketsFacade _eventTicketsFacade;
  final PartnerEventReviewFacade _eventReviewFacade;
  final PartnerReviewFacade _reviewFacade;

  PastEventDetailsCubit({
    required PartnerEventTicketsFacade partnerEventTicketsFacade,
    required PartnerEventReviewFacade partnerEventReviewFacade,
    required PartnerReviewFacade partnerReviewFacade,
  })  : _eventTicketsFacade = partnerEventTicketsFacade,
        _eventReviewFacade = partnerEventReviewFacade,
        _reviewFacade = partnerReviewFacade,
        super(PastEventDetailsState.initial());

  Future<void> initData(Event event) async {
    emit(state.copyWith(status: CubitStatus.loading, event: some(event)));

    await _getEventTickets(event);
    await _getEventReview(event);
    await _getReviewsFromEvent(event);

    if (!state.status.isFailure()) {
      emit(state.copyWith(status: CubitStatus.success));
    }
  }

  Future<void> fetchNextPageReviews() async {
    if (state.hasReachedMax) return;

    final failureOrSuccess = await _reviewFacade.getEventReviews(
      state.event.getOrCrash().id,
      lastReview: state.reviews.last,
      pageSize: pageSize,
    );

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(status: CubitStatus.failure),
      ),
      (reviews) => emit(
        state.copyWith(
          status: CubitStatus.success,
          reviews: List.of(state.reviews)..addAll(reviews),
          hasReachedMax: reviews.length != pageSize,
        ),
      ),
    );
  }

  Future<void> _getEventTickets(Event event) async {
    _eventTicketsFacade.getEventTickets(event).take(1).listen((result) {
      result.fold(
        (failure) => emit(state.copyWith(status: CubitStatus.failure)),
        (tickets) => emit(state.copyWith(eventTickets: some(tickets))),
      );
    });
  }

  Future<void> _getEventReview(Event event) async {
    final failureOrSuccess = await _eventReviewFacade.getEventReview(event);

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (review) => emit(state.copyWith(eventReview: some(review))),
    );
  }

  Future<void> _getReviewsFromEvent(Event event) async {
    final failureOrSuccess = await _reviewFacade.getEventReviews(
      event.id,
      pageSize: pageSize,
    );

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (reviews) => emit(
        state.copyWith(
          status: CubitStatus.success,
          reviews: reviews,
          hasReachedMax: reviews.length != pageSize,
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';

part 'past_event_details_cubit.freezed.dart';

part 'past_event_details_state.dart';

class PastEventDetailsCubit extends Cubit<PastEventDetailsState> {
  final PartnerEventTicketsFacade _eventTicketsFacade;
  final PartnerEventReviewFacade _eventReviewFacade;

  PastEventDetailsCubit({
    required PartnerEventTicketsFacade partnerEventTicketsFacade,
    required PartnerEventReviewFacade partnerEventReviewFacade,
  })  : _eventTicketsFacade = partnerEventTicketsFacade,
        _eventReviewFacade = partnerEventReviewFacade,
        super(PastEventDetailsState.initial());

  Future<void> initData(Event event) async {
    emit(state.copyWith(status: CubitStatus.loading, event: some(event)));

    await _getEventTickets(event);
    await _getEventReview(event);

    if (!state.status.isFailure()) {
      emit(state.copyWith(status: CubitStatus.success));
    }
  }

  Future<void> _getEventTickets(Event event) async {
    _eventTicketsFacade.getEventTickets(event).take(1).listen((result) {
      result.fold(
        (failure) => emit(state.copyWith(status: CubitStatus.failure)),
        (tickets) => emit(
          state.copyWith(eventTickets: some(tickets)),
        ),
      );
    });
  }

  Future<void> _getEventReview(Event event) async {
    final failureOrSuccess = await _eventReviewFacade.getEventReview(event);

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (review) => emit(
        state.copyWith(eventReview: some(review)),
      ),
    );
  }
}

import 'dart:async';

import 'package:clubs/clubs.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'club_reviews_bloc.freezed.dart';
part 'club_reviews_event.dart';
part 'club_reviews_state.dart';

const pageSize = 20;

const throttleDuration = Duration(milliseconds: 500);

class ClubReviewsBloc extends Bloc<ClubReviewsEvent, ClubReviewsState> {
  final UserReviewFacade _reviewFacade;

  ClubReviewsBloc(this._reviewFacade) : super(ClubReviewsState.initial()) {
    on<_NextPageReviewsFetched>(
      _onNextPageReviewsFetched,
      transformer: throttleDroppable(throttleDuration),
    );

    on<_ReviewsFetched>(_onReviewsFetched);

    on<_ReviewReported>(_onReviewReported);
  }

  Future<void> _onReviewsFetched(
      _ReviewsFetched event, Emitter<ClubReviewsState> emit) async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _reviewFacade
        .getClubReviewsAsUser(event.clubId, pageSize: pageSize);

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (reviews) => emit(
        state.copyWith(
          status: CubitStatus.success,
          reviews: reviews,
          hasReachedMax: reviews.length != pageSize,
          clubId: event.clubId,
        ),
      ),
    );
  }

  Future<void> _onNextPageReviewsFetched(
      _NextPageReviewsFetched event, Emitter<ClubReviewsState> emit) async {
    if (state.hasReachedMax) return;

    final failureOrSuccess = await _reviewFacade.getClubReviewsAsUser(
        state.clubId,
        lastReview: state.reviews.last,
        pageSize: pageSize);

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

  Future<void> _onReviewReported(
    _ReviewReported event,
    Emitter<ClubReviewsState> emit,
  ) async {
    emit(
      state.copyWith(
        reviewReportStatus: CubitStatus.loading,
        reportingReviewId: some(event.reviewId),
      ),
    );

    final failureOrSuccess =
        await _reviewFacade.reportReviewAsUser(event.reviewId);

    failureOrSuccess.fold(
      (failure) => _emitReviewReportFailure(failure, emit),
      (success) => _emitReviewReportSuccess(emit),
    );
  }

  _emitReviewReportSuccess(Emitter<ClubReviewsState> emit) {
    emit(
      state.copyWith(
        snackbarMessage: some(S().reviewReportedSuccessfully),
        reviewReportStatus: CubitStatus.success,
        reportingReviewId: none(),
      ),
    );

    emit(state.copyWith(snackbarMessage: none()));
  }

  _emitReviewReportFailure(
    UserReviewFailure reviewFailure,
    Emitter<ClubReviewsState> emit,
  ) {
    emit(
      state.copyWith(
        snackbarMessage: some(reviewFailure.message),
        reviewReportStatus: CubitStatus.failure,
        reportingReviewId: none(),
      ),
    );

    emit(state.copyWith(snackbarMessage: none()));
  }
}

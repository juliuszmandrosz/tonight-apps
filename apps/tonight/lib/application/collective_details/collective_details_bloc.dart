import 'dart:async';

import 'package:clubs/domain/reviews/entities/review_entity.dart';
import 'package:clubs/domain/reviews/failures/user_review_failure.dart';
import 'package:clubs/domain/reviews/user_review_facade.dart';
import 'package:common/application/application.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:events/domain/events/user_event_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/artists/artist_entity.dart';
import 'package:tonight/domain/artists/artist_facade.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';
import 'package:tonight/domain/collectives/collective_facade.dart';
import 'package:translations/generated/generated.dart';

part 'collective_details_bloc.freezed.dart';
part 'collective_details_event.dart';
part 'collective_details_state.dart';

const _pageSize = 20;

class CollectiveDetailsBloc
    extends Bloc<CollectiveDetailsEvent, CollectiveDetailsState> {
  final UserEventFacade _eventFacade;
  final UserReviewFacade _reviewFacade;
  final ArtistFacade _artistFacade;
  final CollectiveFacade _collectiveFacade;

  CollectiveDetailsBloc(
    this._eventFacade,
    this._reviewFacade,
    this._artistFacade,
    this._collectiveFacade,
  ) : super(CollectiveDetailsState.initial()) {
    on<_EventsFetched>(_eventsFetched);
    on<_ReviewsFetched>(_reviewsFetched);
    on<_ArtistsFetched>(_artistsFetched);
    on<_NextPageReviewsFetched>(
      _nextPageReviewsFetched,
      transformer: throttleDroppable(),
    );
    on<_ReviewReported>(_reviewReported);
    on<_CollectiveInitialized>(_collectiveInitialized);
  }

  FutureOr<void> _eventsFetched(
    _EventsFetched event,
    Emitter<CollectiveDetailsState> emit,
  ) async {
    emit(state.copyWith(getEventsStatus: CubitStatus.loading));
    final collectiveId = event.collectiveId;
    final result =
        await _eventFacade.getUpcomingEventsFromCollective(collectiveId);
    result.fold(
      (failure) => emit(state.copyWith(getEventsStatus: CubitStatus.failure)),
      (events) => emit(
        state.copyWith(
          getEventsStatus: CubitStatus.success,
          events: events,
        ),
      ),
    );
  }

  FutureOr<void> _reviewsFetched(
    _ReviewsFetched event,
    Emitter<CollectiveDetailsState> emit,
  ) async {
    emit(state.copyWith(getReviewsStatus: CubitStatus.loading));
    final collectiveId = event.collectiveId;
    final result = await _reviewFacade.getCollectiveReviews(
      collectiveId,
      pageSize: _pageSize,
    );
    result.fold(
      (failure) => emit(state.copyWith(getReviewsStatus: CubitStatus.failure)),
      (reviews) => emit(
        state.copyWith(
          getReviewsStatus: CubitStatus.success,
          reviews: reviews,
          hasReviewsReachedMax: reviews.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _nextPageReviewsFetched(
    _NextPageReviewsFetched event,
    Emitter<CollectiveDetailsState> emit,
  ) async {
    if (state.hasReviewsReachedMax || state.reviews.isEmpty) return;
    final result = await _reviewFacade.getCollectiveReviews(
      event.collectiveId,
      pageSize: _pageSize,
      lastReview: state.reviews.last,
    );
    result.fold(
      (failure) => emit(state.copyWith(getReviewsStatus: CubitStatus.failure)),
      (reviews) => emit(
        state.copyWith(
          getReviewsStatus: CubitStatus.success,
          reviews: [...state.reviews, ...reviews],
          hasReviewsReachedMax: reviews.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _artistsFetched(
    _ArtistsFetched event,
    Emitter<CollectiveDetailsState> emit,
  ) async {
    emit(state.copyWith(getArtistsStatus: CubitStatus.loading));
    final collectiveId = event.collectiveId;
    final result = await _artistFacade.getResidentsFromCollective(collectiveId);
    result.fold(
      (failure) => emit(state.copyWith(getArtistsStatus: CubitStatus.failure)),
      (artists) => emit(
        state.copyWith(
          getArtistsStatus: CubitStatus.success,
          artists: artists,
        ),
      ),
    );
  }

  Future<void> _reviewReported(
    _ReviewReported event,
    Emitter<CollectiveDetailsState> emit,
  ) async {
    final reviewIdsBeforeReport = [
      ...state.reportingReviewIds,
      event.review.id
    ];
    emit(state.copyWith(reportingReviewIds: reviewIdsBeforeReport));

    final failureOrSuccess =
        await _reviewFacade.reportReviewAsUser(event.review);

    final reviewIdsAfterReport = [...state.reportingReviewIds]
      ..remove(event.review.id);

    emit(state.copyWith(reportingReviewIds: reviewIdsAfterReport));

    failureOrSuccess.fold(
      (failure) => _emitReviewReportFailure(failure, emit),
      (success) => _emitReviewReportSuccess(emit),
    );
  }

  FutureOr<void> _collectiveInitialized(
    _CollectiveInitialized event,
    Emitter<CollectiveDetailsState> emit,
  ) async {
    if (event.collective == null && event.collectiveId == null) {
      emit(state.copyWith(getCollectiveStatus: CubitStatus.failure));
      return;
    }

    if (event.collective != null) {
      emit(
        state.copyWith(
          getCollectiveStatus: CubitStatus.success,
          collective: some(event.collective!),
        ),
      );
      return;
    }

    emit(state.copyWith(getCollectiveStatus: CubitStatus.loading));
    final result =
        await _collectiveFacade.getCollectiveById(event.collectiveId!);
    result.fold(
      (failure) =>
          emit(state.copyWith(getCollectiveStatus: CubitStatus.failure)),
      (collective) => emit(
        state.copyWith(
          getCollectiveStatus: CubitStatus.success,
          collective: some(collective),
        ),
      ),
    );
  }

  _emitReviewReportSuccess(Emitter<CollectiveDetailsState> emit) {
    emit(state.copyWith(snackbarMessage: some(S().reviewReportedSuccessfully)));
    emit(state.copyWith(snackbarMessage: none()));
  }

  _emitReviewReportFailure(
    UserReviewFailure reviewFailure,
    Emitter<CollectiveDetailsState> emit,
  ) {
    emit(state.copyWith(snackbarMessage: some(reviewFailure.message)));
    emit(state.copyWith(snackbarMessage: none()));
  }
}

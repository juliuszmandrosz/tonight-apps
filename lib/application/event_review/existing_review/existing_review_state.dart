part of 'existing_review_cubit.dart';

@freezed
abstract class ExistingReviewState with _$ExistingReviewState {
  const ExistingReviewState._();

  const factory ExistingReviewState.initial() = _Initial;

  const factory ExistingReviewState.loadInProgress() = _LoadInProgress;

  const factory ExistingReviewState.loadSuccess(Review review) = _LoadSuccess;

  const factory ExistingReviewState.loadFailure(
      UserReviewFailure reviewFailure) = _LoadFailure;
}
